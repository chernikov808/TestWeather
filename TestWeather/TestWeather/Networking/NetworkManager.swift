//
//  NetworkManager.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation
import Alamofire

// протокол получает запрошенную модель погоды или возвращает ошибку
protocol WeatherProtocol {
    typealias WeatherCompletionBlock = (_ weathrModel: WeatherModel?, _ error: AFError?) -> ()
    
    func fetchWeather(lat:String, lon:String, extra:Bool, completion: @escaping WeatherCompletionBlock)
}
//класс соверешает запрос через alamofire к api погоды и возвращает нам данные или ошибку
class WeatherNetworkManager: WeatherProtocol {
    
    func fetchWeather(lat: String, lon: String, extra: Bool, completion: @escaping WeatherCompletionBlock) {
        
        NetRouter<WeatherEndPoint, WeatherModel>().request(.forecast(lat: lat, lon: lon, extra: extra)){ response in
            switch response.result{
            case .success(let value):
                completion(value, nil)
            case.failure(let error):
                completion(nil, error)
            }
        }
        
    }
    
}
