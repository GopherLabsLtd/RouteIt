import Foundation

/// An Abstract for a Route Client.
public protocol RouteClient {
    
    /// Called in the AppDelegate to handle the incoming URL.
    func handle(url: URL)
    
    /// Call in the AppDelegate to handle the incoming UserActivity.
    func handle(userActivity: NSUserActivity)
    
    /// Abstract implementation for registering a route.
    func registerRoute(_ route: RouteTargetType, handler: @escaping (RouteTargetType, Parameters) -> Void)
    
    /// Abstract implementation for dispatching a route.
    func dispatchRoute(_ route: RouteTargetType)
}
