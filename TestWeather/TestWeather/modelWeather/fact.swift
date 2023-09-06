//
//  fact.swift
//  TestWeather
//
//  Created by Евгений Черников on 27.08.2023.
//

import Foundation

struct FactModelWrapper: Decodable{
    let fact: FactModel
}

struct FactModel: Decodable {
    let temp: Int // температура
    let feelsLike: Int?//ощущаемая темепратура
//    let tempWater: Int? // темп воды
    let icon: String
    let condition: Condition //код рашифровки полного описания
    let windSpeed: Double // скорость ветра
    let pressureMm: Int // давление рт.ст
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        temp = try container.decode(Int.self, forKey: .temp)
        feelsLike = try container.decode(Int.self, forKey: .feelsLike)
//        tempWater = try container.decode(Int.self, forKey: .tempWater)
        icon = try container.decode(String.self, forKey: .icon)
        condition = try container.decode(Condition.self, forKey: .condition)
        windSpeed = try container.decode(Double.self, forKey: .windSpeed)
        pressureMm = try container.decode(Int.self, forKey: .pressureMm)
      }
    
//    func encode(to encoder: Encoder) throws {
//      var container = encoder.container(keyedBy: CodingKeys.self)
//      try container.encode(temp, forKey: .temp)
////      try container.encode(price, forKey: .price)
////      try container.encode(quantity, forKey: .quantity)
//    }
    
    enum CodingKeys: String, CodingKey{
        case temp // температура
        case feelsLike = "feels_like"//ощущаемая темепратура
        case tempWater = "temp_water" // темп воды
        case icon
        case condition //код рашифровки полноcaseописания
        case windSpeed = "wind_speed" // скорость ветра
        case pressureMm = "pressure_mm"
    }
}

enum Condition: String, Codable {
    case clear
    case partlyCloudy = "partly-cloudy"
    case cloudy
    case overcast
    case lightRain = "light-rain"
    case rain
    case heavyRain = "heavy-rain"
    case showers
    case wetSnow = "wet-snow"
    case lightSnow = "light-snow"
    case snow
    case snowShowers = "snow-showers"
    case hail
    case thunderstorm
    case thunderstormWithRain = "thunderstorm-with-rain"
    case thunderstormWithHail = "thunderstorm-with-hail"
}


