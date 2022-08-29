//
//  NetworkConfigurations.swift
//  CoolWeather
//
//  Created by Rami Ounifi on 29.08.22.
//

import Foundation

public protocol NetworkConfigurable {
    var baseURL: String { get }

}

public struct ApiDataNetworkConfig: NetworkConfigurable {
    public var baseURL: String

    
     public init(baseURL: String) {
        self.baseURL = baseURL
    }
}

