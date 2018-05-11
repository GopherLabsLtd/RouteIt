import Foundation

/// Represents the types of parameters that are supported.
public enum RouteParameters {
    /// A route with no parameters.
    case none
    
    /// A route with URL Parameters.
    case urlParameters(Parameters)
}
