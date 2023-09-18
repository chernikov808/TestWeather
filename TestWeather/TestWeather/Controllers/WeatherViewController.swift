//
//  WeatherViewController.swift
//  TestWeather
//
//  Created by Евгений Черников on 17.09.2023.
//

import UIKit
import SnapKit


class WeatherViewController:  UIViewController {
    
    var weatherTableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        weatherTableView.backgroundColor = .blue
        
        weatherTableView.delegate = self
        weatherTableView.dataSource = self
        
        weatherTableView.register( DateWeatherTbCell.self, forCellReuseIdentifier: "DateWeatherTbCell")
        
        view.addSubview(weatherTableView)
        weatherTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
   
}
extension WeatherViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        switch section{
//        case 0:
//            return 1
//        case 1:
//            return 5
//        default:
//            return 0
//        }
        
        return  section == 0 ? 1 : 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        
        switch indexPath.section{
        case 0:
            let cell = UITableViewCell()
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        case 1:
            let dateCell = tableView.dequeueReusableCell(withIdentifier: "DateWeatherTbCell") as? DateWeatherTbCell
            return dateCell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
        
        
        
        
    }
    
    
}

extension WeatherViewController: UITableViewDelegate {
    
}
