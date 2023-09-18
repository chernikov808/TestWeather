//
//  WeatherEndPoint.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation
import Alamofire

// создаем endpoint нашего приложения, конечный запрос
enum WeatherEndPoint {
    case forecast(lat:String, lon:String, extra:Bool)

}
// в расширении указываем сам запрос наследуем протокол Routing собираем базовый url
extension WeatherEndPoint: Routing {
    var baseUrl: String {
      return API.configure(scheme: .https, domain: Configuration.baseUrl, version: .v2)
    }
    // указывваем путь
    var path: String {
        switch self{
        case .forecast:
            return "/forecast"
        }
    }
    // указывыаем необходимые параметры запроса
    var parameters: Parameters {
        switch self{
        case .forecast(let lat, let  lon, let extra):
            return [
                "lat": lat,
                "lon": lon,
                "extra": extra
            ]
        }
    }
    // в заголовке передаем ключ
    var headers: HTTPHeaders {
        return ["X-Yandex-API-Key": Configuration.yandexApiKey]
    }
}
