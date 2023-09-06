//
//  API.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation


struct API {
    
    static func configure(scheme: Scheme, domain: String, version: Version ) -> String {
        
        return [scheme.rawValue, domain, version.rawValue].joined(separator: "/")
    }
    
    enum Scheme: String {
        case http = "http:/"
        case https = "https:/"
    }
    
    enum Version: String {
        case v1
        case v2
    }
    
}

