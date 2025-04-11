import Foundation

// 데이터 모델
public struct CoinDTO: Codable {
    public let id: String
    public let symbol: String
    public let name: String
    public let image: String
    public let currentPrice: Double
    public let marketCap: Double
    public let marketCapRank: Int
    public let totalVolume: Double
    public let priceChangePercentage24h: Double
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case totalVolume = "total_volume"
        case priceChangePercentage24h = "price_change_percentage_24h"
    }
}

public protocol CoinRepositoryProtocol {
    func fetchCoins() async throws -> [CoinDTO]
}

public class CoinRepository: CoinRepositoryProtocol {
    private let apiClient: APIClientProtocol
    
    public init(apiClient: APIClientProtocol = APIClient()) {
        self.apiClient = apiClient
    }
    
    public func fetchCoins() async throws -> [CoinDTO] {
        // 실제 API 호출 대신 샘플 데이터 반환 (Alamofire 설정이 완료되면 수정 필요)
        return sampleCoins
    }
    
    // 샘플 데이터
    private let sampleCoins: [CoinDTO] = [
        CoinDTO(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png", currentPrice: 60000.0, marketCap: 1150000000000, marketCapRank: 1, totalVolume: 30000000000, priceChangePercentage24h: 2.5),
        CoinDTO(id: "ethereum", symbol: "eth", name: "Ethereum", image: "https://assets.coingecko.com/coins/images/279/large/ethereum.png", currentPrice: 3500.0, marketCap: 420000000000, marketCapRank: 2, totalVolume: 15000000000, priceChangePercentage24h: 1.2)
    ]
} 