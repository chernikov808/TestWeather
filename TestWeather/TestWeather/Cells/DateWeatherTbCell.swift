//
//  DateWeatherTbCell.swift
//  TestWeather
//
//  Created by Евгений Черников on 17.09.2023.
//

import Foundation
import UIKit

class DateWeatherTbCell: UITableViewCell {
    lazy var dateLabel:UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    lazy var minTempLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var maxTempLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    lazy var iconStatusWeather: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "weatherIcon")
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
//Mark: - dateLabel
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(10)
        }
        dateLabel.text = "11 september"
        
//Mark: - dayLabel
        addSubview(dayLabel)
        dayLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-10)
        }
        dayLabel.text = "Сегодня"
        
//Mark: - mintemp
        addSubview(minTempLabel)
        minTempLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(23)
        }
        minTempLabel.text = "+10"
        
//Mark: - maxTemp
        addSubview(maxTempLabel)
        maxTempLabel.snp.makeConstraints { make in
            make.trailing.equalTo(minTempLabel.snp.leading).offset(-20)
            make.top.equalToSuperview().offset(21)

            
        }
        maxTempLabel.text = "+20"
        
//Mark: - Icon
        addSubview(iconStatusWeather)
        iconStatusWeather.snp.makeConstraints { make in
            make.trailing.equalTo(maxTempLabel.snp.leading).offset(-20)
            make.width.height.equalTo(40)
            make.top.equalToSuperview().offset(10)
        }
    }
}
