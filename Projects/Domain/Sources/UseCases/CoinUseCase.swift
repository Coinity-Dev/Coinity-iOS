import Foundation
import Data

public protocol CoinUseCaseProtocol {
    func getCoins() async throws -> [CoinModel]
    func searchCoins(by query: String) async throws -> [CoinModel]
}

public class CoinUseCase: CoinUseCaseProtocol {
    private let repository: CoinRepositoryProtocol
    
    public init(repository: CoinRepositoryProtocol) {
        self.repository = repository
    }
    
    public func getCoins() async throws -> [CoinModel] {
        let coinsDTO = try await repository.fetchCoins()
        return coinsDTO.map { mapToDomain(dto: $0) }
    }
    
    public func searchCoins(by query: String) async throws -> [CoinModel] {
        let coinsDTO = try await repository.fetchCoins()
        let filteredCoins = coinsDTO.filter {
            $0.name.lowercased().contains(query.lowercased()) ||
            $0.symbol.lowercased().contains(query.lowercased())
        }
        return filteredCoins.map { mapToDomain(dto: $0) }
    }
    
    private func mapToDomain(dto: CoinDTO) -> CoinModel {
        return CoinModel(
            id: dto.id,
            symbol: dto.symbol,
            name: dto.name,
            imageUrl: dto.image,
            price: dto.currentPrice,
            marketCap: dto.marketCap,
            rank: dto.marketCapRank,
            volume: dto.totalVolume,
            priceChangePercentage: dto.priceChangePercentage24h
        )
    }
} 