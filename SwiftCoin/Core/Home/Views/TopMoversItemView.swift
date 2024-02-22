//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI

struct TopMoversItemView: View {
    
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // image
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
                .padding(.top, 8)
                .padding(.bottom, 8)
            
            // coin info
            
            HStack(spacing: 4) {
                Text(coin.symbol.uppercased())
                    .font(.callout)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            // coin percent changee
            
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 2)
        )
    }
}

#Preview {
    TopMoversItemView(coin: Coin.example)
}
