//
//  ViewController.swift
//  TestWeather
//
//  Created by Евгений Черников on 27.08.2023.
//

import UIKit
import Alamofire

// DZ :  Codable - read
// Posmotret' video raboti s Alamofire
// private enum CodingKeys: String, CodingKey {}

class ViewController: UIViewController {

    
//    let testUrlStr = "https://api.weather.yandex.ru/v2/forecast"
    
    let netMannager = WeatherNetworkManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        netMannager.fetchWeather(lat: "55.7539", lon: "37.620393", extra: true, completion: { result, error in
            
            print(result)
            
        })
        
//        let header = ["X-Yandex-API-Key": "f82f0317-4f72-40e9-9b4b-cb4cbd3ad5a2"]
//
//        let parameters: [String: Any] = ["lat":"55.7539", "lon": "37.620393", "extra": true]
//
//        AF.request(testUrlStr,method: .get,parameters: parameters, headers: HTTPHeaders(header)).responseDecodable(of: WeatherModel.self){ response in
////
////            if let data = response.data {
//////                print(String(data: data, encoding: .utf8))
////            }
//
//            switch response.result{
//            case .success(let value):
//                print(value)
//            case.failure(let error):
//
//                print(error.localizedDescription)
//            }
//        }
    }

    
}

