//
//  Coin.swift
//  SwiftCoin
//
//  Created by Mert Durkaya on 22/02/2024.
//

import Foundation

struct Coin: Codable, Identifiable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCapRank: Int
    let marketCap, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }

    static let example = Coin(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 50000, marketCapRank: 1, marketCap: 1000000000000, fullyDilutedValuation: 1000000000000, totalVolume: 1000000000000, high24H: 50000, low24H: 50000, priceChange24H: 50000, priceChangePercentage24H: 50000, marketCapChange24H: 50000, marketCapChangePercentage24H: 50000, circulatingSupply: 50000, totalSupply: 50000, maxSupply: 50000, ath: 50000, athChangePercentage: 50000, athDate: "2024-02-22", atl: 50000, atlChangePercentage: 50000, atlDate: "2024-02-22", lastUpdated: "2024-02-22", sparklineIn7D: SparklineIn7D(price: [50000, 50000, 50000, 50000, 50000, 50000, 50000]), priceChangePercentage24HInCurrency: 50000)
}

struct SparklineIn7D: Codable {
    let price: [Double]
}
