//
//  UpForecastCollectionCell.swift
//  TestWeather
//
//  Created by Евгений Черников on 23.09.2023.
//

import UIKit
class UpForecastCollectionCell: UICollectionViewCell {
//    var windSpeed: UILabel = {
//        let label = UILabel()
//        label.textColor = .white
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.text = "3° 1 м/c, B <"
//        return label
//    }()
    lazy var windSpeed: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "3° 1 м/c, B <"
        return label
    }()
    lazy var pressure: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "(• 749 мм рт. ст."
        return label
    }()
    lazy var humidity: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "61 %"
        return label
    }()
    lazy var tempWater: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "+14°"
        return label
    }()
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("vse slomalos'")
    }
    
    func setup(){
        backgroundColor = .orange
        addSubview(windSpeed)
        windSpeed.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        addSubview(pressure)
        pressure.snp.makeConstraints { make in
            make.top.equalTo(windSpeed.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        addSubview(humidity)
        humidity.snp.makeConstraints { make in
            make.top.equalTo(pressure.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            
        }
        addSubview(tempWater)
        tempWater.snp.makeConstraints { make in
            make.top.equalTo(humidity.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
            
        }
        
    }
    
}
