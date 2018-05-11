import Foundation

public protocol RouteTargetType {
    
    /// The Deeplink's base `URL`.
    var baseURL: URL { get }
    
    /// The path to be appended to `baseURL` to form the full route `URL`.
    var path: String { get }
    
    /// The parameters associated with the route. Default is set to `none`
    var parameters: RouteParameters { get }
    
    /// The Handler to handle the route (ie the `baseURL` + `path` getting dispatched)
    var routeHandler: RouteHandler { get }
    
    /// Called to prepare the Route. Default is to not intercept the handler.
    func prepareRoute(route: RouteTargetType, urlParameters: Parameters, completion: RouteHandler)
    
    /// All the routes to be registered
    static var allRoutes: [RouteTargetType] { get }
    
}

extension RouteTargetType {
    
    /// The parameters associated with the route. Default is set to `none`
    var parameters: RouteParameters {
        return .none
    }
    
    /// Called to prepare the Route. Default is to not intercept the handler.
    public func prepareRoute(route: RouteTargetType, urlParameters: Parameters, completion: RouteHandler) {
        completion(route, urlParameters)
    }
}
