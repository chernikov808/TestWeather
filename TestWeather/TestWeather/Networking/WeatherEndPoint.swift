//
//  WeatherEndPoint.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation
import Alamofire


enum WeatherEndPoint {
    case forecast(lat:String, lon:String, extra:Bool)

}

extension WeatherEndPoint: Routing {
    var baseUrl: String {
      return API.configure(scheme: .https, domain: Configuration.baseUrl, version: .v2)
    }
    
    var path: String {
        switch self{
        case .forecast:
            return "/forecast"
        }
    }
    
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
    
    var headers: HTTPHeaders {
       return ["X-Yandex-API-Key": "f82f0317-4f72-40e9-9b4b-cb4cbd3ad5a2"]
    }
}
