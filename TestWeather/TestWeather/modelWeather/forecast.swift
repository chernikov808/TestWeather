//
//  forecast.swift
//  TestWeather
//
//  Created by Евгений Черников on 27.08.2023.
//

import Foundation

struct ForecastModel: Decodable {
    let date: String // дата прогноза в формате ггг-мм-дд
    
//    enum CodingKeys: CodingKey {
//        case date
//    }
//    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.date = try container.decode(String.self, forKey: .date)
//    }
}
