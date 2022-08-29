//
//  EndPoints.swift
//  CoolWeather
//
//  Created by Rami Ounifi on 29.08.22.
//

import Foundation
enum EndPoint {

    static let imagePlaceholder: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4z_N_tl0P5z3OdnC5q70eP-XDa_SlPW9ODw&usqp=CAU"
}

//extension EndPoint {
//    
//    static func createImageUrl(
//        imageName: String
//    ) -> String {
//        return imageUrl
//        + imageName
//        + ".png"
//    }
//}

enum FetchError: Error {
    case failed
    case timeout
    case permission(String)
}



let offlineError = "Ooops! we lost internet connection"


