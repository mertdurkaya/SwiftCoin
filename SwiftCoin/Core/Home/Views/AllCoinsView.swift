//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack {
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .foregroundStyle(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinsView(viewModel: HomeViewModel())
}
