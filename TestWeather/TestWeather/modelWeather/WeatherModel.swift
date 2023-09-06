//
//  WeatherResponse.swift
//  TestWeather
//
//  Created by Евгений Черников on 05.09.2023.
//

import Foundation

struct WeatherModel: Decodable {
    let now: Int
    let nowDt: String
    let info: InfoModel
    let fact: FactModel
    let forecasts: [ForecastModel]
    
    enum CodingKeys: String, CodingKey {
        case now
        case nowDt = "now_dt"
        case info
        case fact
        case forecasts
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.now = try container.decode(Int.self, forKey: .now)
        self.nowDt = try container.decode(String.self, forKey: .nowDt)
        self.info = try container.decode(InfoModel.self, forKey: .info)
        self.fact = try container.decode(FactModel.self, forKey: .fact)
        self.forecasts = try container.decode([ForecastModel].self, forKey: .forecasts)
    }
    
}

