//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI

struct TopMoversItemView: View {
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
                Text("BTC")
                    .font(.callout)
                    .fontWeight(.bold)
                
                Text("$52,500.00")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            // coin percent changee
            
            Text("+2.5%")
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
    TopMoversItemView()
}
