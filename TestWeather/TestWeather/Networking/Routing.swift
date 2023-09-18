//
//  ROUTING.swift
//  TestWeather
//
//  Created by Евгений Черников on 06.09.2023.
//

import Foundation
import Alamofire

//создаем протокол routing который формирует наш запрос к api погоды содержит базовый url
//путь метод запроса параметры и заголовок запроса
//здесь реализуем стандартный запрос к api через протокол Routing
protocol Routing {
    var baseUrl: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Parameters { get }
    var headers: HTTPHeaders { get }
    var baseUrlWithPath: String { get }
}


// в extension мы записываем дефолтные значения
extension Routing {
    var method: HTTPMethod { return .get }
    var parameters: Parameters { return [:] }
    var headers: HTTPHeaders { return [:] }
    var baseUrlWithPath: String { return baseUrl + path }
}
