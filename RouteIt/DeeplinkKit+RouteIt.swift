import Foundation
import DeepLinkKit

extension DPLDeepLinkRouter: RouteClient {
    public func handle(userActivity: NSUserActivity) {
        handle(userActivity) { handled, error in
            // Intentionally left empty
        }
    }
    
    public func handle(url: URL) {
        handle(url) { handled, error in
            // Intentionally left empty
        }
    }
    
    public func registerRoute(_ target: RouteTargetType, handler: @escaping (RouteTargetType, Parameters) -> Void) {
        register(target.baseURL.appendingPathComponent(target.path).absoluteString) { link in
            if let parameters = link?.queryParameters as? Parameters {
                handler(target, parameters)
            }
        }
    }
    
    public func dispatchRoute(_ route: RouteTargetType) {
        switch route.parameters {
        case .none:
            UIApplication.shared.open(route.baseURL.appendingPathComponent(route.path),
                                      options: [:], completionHandler: nil)
        case .urlParameters(let parameters):
            UIApplication.shared.open(route.baseURL.appendingPathComponent(route.path)
                .appendQueryParameters(parameters: parameters), options: [:], completionHandler: nil)
        }
    }
}
