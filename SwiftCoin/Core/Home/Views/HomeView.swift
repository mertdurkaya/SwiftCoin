//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 21/02/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                TopMoversView(viewModel: viewModel)
                Divider()
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
