//
//  API.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation

// Создаем структуру API Которая собирает адрес для доступа к API в зависимости от запроса


struct API {
    // функция configure возвращает адрес для доступа к api
    static func configure(scheme: Scheme, domain: String, version: Version ) -> String {
        
        return [scheme.rawValue, domain, version.rawValue].joined(separator: "/")
    }
    // enum позволяет выбирать протокол
    enum Scheme: String {
        case http = "http:/"
        case https = "https:/"
    }
    // опциональный выбор пути 
    enum Version: String {
        case v1
        case v2
    }
    
}

