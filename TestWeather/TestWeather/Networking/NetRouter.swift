//
//  NetRouter.swift
//  TestWeather
//
//  Created by Евгений Черников on 11.09.2023.
//

import Foundation
import Alamofire

//в данном файле выполняется логика запроса

//создаем собственный тип данных который принимает данные поддерживаемые typealias AFDataResponse и через замыкание проверяем что они соотвевуют протоколу decodable
typealias NetWorkRouterCompletion<T> = ((AFDataResponse<T>) -> Void) where T : Decodable

//Создаем протокол который принимает любой класс и будет реализовывать логику запроса к серверу

protocol NetworkRouter: AnyObject {
    //задаем ассоциированные типы  EndPoint который будет соотвествоватьпротоколу Routing и ParseData который соотвествет протоколы Decodable
    associatedtype EndPoint: Routing
    associatedtype ParseData: Decodable
    
    //создаем функцию которая реализует запрос к серверу, которая принимаетпараметр route конечную точку приложения
    func request(_ route : EndPoint, completion: @escaping NetWorkRouterCompletion<ParseData>)
}
//создаем final class  который реализует сам запрос
final class NetRouter<EndPoint: Routing, ParseData: Decodable>: NetworkRouter{
    
    func request(_ route: EndPoint, completion: @escaping NetWorkRouterCompletion<ParseData>) {
       
        AF.request(route.baseUrlWithPath,
                          method: route.method,
                          parameters: route.parameters,
                          headers: route.headers).responseDecodable(of: ParseData.self, completionHandler: completion)
        
    }
    
}
