//
//  Bundle+Extension.swift
//  CoolWeather
//
//  Created by Rami Ounifi on 29.08.22.
//

import SwiftUI

extension Bundle {
    /// This function returns a string value from a key saved in  `info.plist`.
    ///
    /// usage
    /// Bundle.valueForAPIKey(named: keyName))))
    ///
    /// - Warning: The returned value is String type.
    /// - Parameter subject: input: key of the item
    /// - Returns: value of type `String`.
    static func valueForAPIKey(named keyname:String) -> String {
        let filePath = Bundle.main.path(forResource: "Info", ofType: "plist")
      let plist = NSDictionary(contentsOfFile:filePath!)
      let value = plist?.object(forKey: keyname) as! String
      return value
    }
}

