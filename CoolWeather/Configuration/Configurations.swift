//
//  Configurations.swift
//  CoolWeather
//
//  Created by Rami Ounifi on 29.08.22.
//

import Foundation

 struct AppConfiguration {
    
// MARK: - Base url
    static let baseUrl: String = {
        guard let baseUrl = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
            fatalError("url must not be empty in plist")
        }
        return baseUrl
            .appending((String(describing: Bundle.valueForAPIKey(named: "PublicApiKey"))))
    }()
     
     // MARK: - Base icon url
     static let iconUrl: String = {
         guard let iconUrl = Bundle.main.object(forInfoDictionaryKey: "IconURL") as? String else {
             fatalError("url must not be empty in plist")
         }
         return iconUrl
     }()
     
     
 }

extension AppConfiguration {
    
    static func createImageUrl(
        imageName: String
    ) -> String {
        return iconUrl
        + imageName
        + ".png"
    }
}
