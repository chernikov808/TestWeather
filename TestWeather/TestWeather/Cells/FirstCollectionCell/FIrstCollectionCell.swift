//
//  FIrstCollectionCell.swift
//  TestWeather
//
//  Created by Евгений Черников on 28.09.2023.
//

import UIKit

class FirstCollectionCell: UICollectionViewCell {
//windStack
    lazy var windStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        return stack
    }()
    
    lazy var windImg: UIImageView = {
        let img = UIImage(named: "wind")
        let imageView = UIImageView(image: img)
        imageView.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var speedwindLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "1 м/c, B <"
        label.textColor = .white
        return label
    }()
 //pressureStack
    
    lazy var pressureStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        return stack
    }()
    
    lazy var pressureImg: UIImageView = {
        let img = UIImage(named: "barometr")
        let imageView = UIImageView(image: img)
        imageView.frame = .init(x: 0, y: 0, width: 10, height: 10)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var pressureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "749 мм рт. ст."
        label.textColor = .white
        return label
    }()
//dropstack
    
    lazy var dropStack:UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        return stack
    }()
    
    lazy var dropImg: UIImageView = {
        let img = UIImage(named: "drop")
        let imageView = UIImageView(image: img)
        imageView.frame = .init(x: 0, y: 0, width: 10, height: 10)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var dropLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "61 %"
        label.textColor = .white
        return label
    }()
//weaterStack
    lazy var waterStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        return stack
    }()
    
    lazy var waterImg: UIImageView = {
        let img = UIImage(named: "water")
        let imageView = UIImageView(image: img)
        imageView.frame = .init(x: 0, y: 0, width: 10, height: 10)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var waterLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "+14°"
        label.textColor = .white
        return label
    }()
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("vse slomalos'")
    }
    
    func setup() {
        addSubview(windStack)
        windStack.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.equalTo(5)
            make.trailing.equalToSuperview()
            make.height.equalTo(30)
        }
        windStack.addArrangedSubview(windImg)
        windImg.snp.makeConstraints({$0.width.equalTo(25)})
        windStack.addArrangedSubview(speedwindLabel)

        
        addSubview(pressureStack)
        pressureStack.snp.makeConstraints { make in
            make.top.equalTo(windStack.snp.bottom).offset(10)
            make.leading.equalTo(5)
            make.trailing.equalToSuperview()
            make.height.equalTo(30)
        }
        pressureStack.addArrangedSubview(pressureImg)
        pressureImg.snp.makeConstraints({$0.width.equalTo(25)})
        pressureStack.addArrangedSubview(pressureLabel)
        
        addSubview(dropStack)
        dropStack.snp.makeConstraints { make in
            make.top.equalTo(pressureStack.snp.bottom).offset(10)
            make.leading.equalTo(5)
            make.trailing.equalToSuperview()
            make.height.equalTo(30)

        }
        dropStack.addArrangedSubview(dropImg)
        dropImg.snp.makeConstraints({$0.width.equalTo(25)})
        //чисто под образцы png
        dropStack.addArrangedSubview(dropLabel)
        
        addSubview(waterStack)
        waterStack.snp.makeConstraints { make in
            make.top.equalTo(dropStack.snp.bottom).offset(10)
            make.leading.equalTo(5)
            make.trailing.equalToSuperview()
            make.height.equalTo(30)
            make.bottom.equalToSuperview().offset(-10)
        }
        waterStack.addArrangedSubview(waterImg)
        waterImg.snp.makeConstraints({$0.width.equalTo(25)})
        waterStack.addArrangedSubview(waterLabel)
    }
}
