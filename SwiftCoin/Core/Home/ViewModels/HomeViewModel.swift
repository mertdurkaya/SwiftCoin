//
//  HomeViewModel.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 22/02/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init() {
        fetchCoins()
    }
    
    func fetchCoins() {
        let urlStr = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false"
        
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error -> \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Status Code -> \(response.statusCode)")
            }
            
            guard let data = data else { return }
       
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configTopMovers()
                }
                print("DEBUG: Coins -> \(coins)")
            } catch {
                print("DEBUG: Error -> \(error.localizedDescription)")
            }
        }.resume()
    }
    
    func configTopMovers() {
        let topMovers = coins.sorted { $0.priceChangePercentage24H > $1.priceChangePercentage24H }
        self.topMovingCoins = Array(topMovers.prefix(10))
        print("DEBUG: Top Movers -> \(topMovers)")
    }
}
