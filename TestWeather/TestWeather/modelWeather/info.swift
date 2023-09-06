//
//  info.swift
//  TestWeather
//
//  Created by Евгений Черников on 27.08.2023.
//

import Foundation

struct InfoModel: Decodable {
    let lat: Double
    let lon: Double
    let url: String
    
    enum CodingKeys: CodingKey {
        case lat
        case lon
        case url
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lat = try container.decode(Double.self, forKey: .lat)
        self.lon = try container.decode(Double.self, forKey: .lon)
        self.url = try container.decode(String.self, forKey: .url)
    }
}
