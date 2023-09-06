//
//  NetworkManager.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation
import Alamofire


protocol WeatherProtocol {
    typealias WeatherCompletionBlock = (_ weathrModel: WeatherModel?, _ error: AFError?) -> ()
    
    func fetchWeather(lat:String, lon:String, extra:Bool, completion: @escaping WeatherCompletionBlock)
}

class WeatherNetworkManager: WeatherProtocol {
    
    func fetchWeather(lat: String, lon: String, extra: Bool, completion: @escaping WeatherCompletionBlock) {
        let endPoint: WeatherEndPoint = .forecast(lat: lat, lon: lon, extra: extra)
        
        AF.request(endPoint.baseUrl + endPoint.path,
                   method: endPoint.method,
                   parameters: endPoint.parameters,
                   headers: endPoint.headers).responseDecodable(of: WeatherModel.self){ response in
            switch response.result{
            case .success(let value):
                completion(value, nil)
            case.failure(let error):
                completion(nil, error)
            }
        }
    }
    
    
}
