//
//  SecondCollectionCell.swift
//  TestWeather
//
//  Created by Евгений Черников on 29.09.2023.
//

import UIKit

class SecondCollectionCell: UICollectionViewCell {
    
    lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Сейчас"
        return label
    }()
    
    lazy var statusIcon: UIImageView = {
        let img = UIImage(named: "sunnyFoerecast")
        let imageView = UIImageView(image: img)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var tempStatusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "+17°"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("Fatality")
    }
    
    func setup(){
        addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        addSubview(statusIcon)
        statusIcon.snp.makeConstraints { make in
            make.top.equalTo(timeLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(5)
            make.height.width.equalTo(50)
        }
        addSubview(tempStatusLabel)
        tempStatusLabel.snp.makeConstraints { make in
            make.top.equalTo(statusIcon.snp.bottom).offset(25)
            make.leading.equalTo(10)
            make.bottom.equalTo(-10)
        }
    }
}
