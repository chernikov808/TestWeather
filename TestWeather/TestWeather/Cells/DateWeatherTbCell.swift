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
        label.font = UIFont.
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupViews() {
//Mark: dateLabel
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(10)
        }
        dateLabel.text = "11 september"
        
//Mark: dayLabel
        addSubview(dayLabel)
        dayLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-10)
        }
        dayLabel.text = "Сегодня"
    }
}
