import Foundation
import RouteIt

let mainRouter = RouteProvider<RouteService>()

enum RouteService {
    case page1
    case page2
}

extension RouteService: RouteTargetType {
    var baseURL: URL {
        return URL(string: "routeit://app")!
    }
    
    var path: String {
        switch self {
        case .page1:
            return "/page1"
        case .page2:
            return "/page2"
        }
    }
    
    var parameters: RouteParameters {
        return .none
    }
    
    var routeHandler: RouteHandler {
        return { target, parameters in
            guard let target = target as? RouteService else { return }
            switch target {
            case .page1:
                if let rootViewController = UIApplication.shared.keyWindow?.rootViewController {
                    rootViewController.view.backgroundColor = .red
                }
            case .page2:
                if let rootViewController = UIApplication.shared.keyWindow?.rootViewController {
                    rootViewController.view.backgroundColor = .blue
                }
            }
      
        }
    }
    
    static var allRoutes: [RouteTargetType] {
        return [RouteService.page1, RouteService.page2]
    }
}
