import Foundation

public struct CoinModel: Identifiable, Equatable, Hashable {
    public let id: String
    public let symbol: String
    public let name: String
    public let imageUrl: String
    public let price: Double
    public let marketCap: Double
    public let rank: Int
    public let volume: Double
    public let priceChangePercentage: Double
    
    public init(
        id: String,
        symbol: String,
        name: String,
        imageUrl: String,
        price: Double,
        marketCap: Double,
        rank: Int,
        volume: Double,
        priceChangePercentage: Double
    ) {
        self.id = id
        self.symbol = symbol
        self.name = name
        self.imageUrl = imageUrl
        self.price = price
        self.marketCap = marketCap
        self.rank = rank
        self.volume = volume
        self.priceChangePercentage = priceChangePercentage
    }
} 