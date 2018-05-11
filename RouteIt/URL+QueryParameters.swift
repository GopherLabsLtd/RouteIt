//
//  URL+QueryParameters.swift
//  RouteIt
//
//  Created by Alex Nguyen on 2018-05-11.
//  Copyright © 2018 Gohper Labs LTD. All rights reserved.
//

import Foundation

extension URL {
    @discardableResult
    func appendQueryParameters(parameters: Parameters) -> URL {
        var components = URLComponents(string: self.absoluteString)
        components?.queryItems = parameters.map {
            URLQueryItem(name: $0, value: $1)
        }
        return components?.url ?? self
    }
}
