import Foundation
import Alamofire

public protocol APIClientProtocol {
    func request<T: Decodable>(_ endpoint: Endpoint) async throws -> T
}

public class APIClient: APIClientProtocol {
    private let session: Session
    
    public init(session: Session = .default) {
        self.session = session
    }
    
    public func request<T: Decodable>(_ endpoint: Endpoint) async throws -> T {
        return try await withCheckedThrowingContinuation { continuation in
            session.request(
                endpoint.url,
                method: endpoint.method,
                parameters: endpoint.parameters,
                encoding: endpoint.encoding,
                headers: endpoint.headers
            )
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let value):
                    continuation.resume(returning: value)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
} 