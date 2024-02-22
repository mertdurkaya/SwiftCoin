//
//  CoinRowView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            
            //image
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
            
            //coin name info
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            //coin price info
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundStyle(.green)
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
    }
}

#Preview {
    CoinRowView(coin: Coin.example)
}
