//
//  CoinRowView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundStyle(.gray)
                .frame(width: 24)
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
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
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.priceChangePercentage24H.toPercentage())
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
    }
}

#Preview {
    CoinRowView(coin: Coin.example)
}
