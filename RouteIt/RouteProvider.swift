import Foundation
import DeepLinkKit

/// A Protocol representing an interface for a RouteProvider.
public protocol RouteProviderType: AnyObject {
    
    associatedtype RouteTarget: RouteTargetType
    
    /// Used for dispatcing a particular route.
    func dispatch(_ route: RouteTarget)
}

open class RouteProvider<RouteTarget: RouteTargetType>: RouteProviderType {
    public let client: RouteClient
    
    public init(router: RouteClient = DPLDeepLinkRouter()) {
        self.client = router
        registerAllRoutes()
    }
    
    /// Convienence method to register all the routes in a given RouteTargetType.
    public func registerAllRoutes() {
        for route in RouteTarget.allRoutes {
            register(route)
        }
    }
    
    /// Registers a single route.
    public func register(_ route: RouteTargetType) {
        client.registerRoute(route, handler: route.routeHandler)
    }
    
    /// Dispatches a single route.
    public func dispatch(_ route: RouteTarget) {
        client.dispatchRoute(route)
    }
}
