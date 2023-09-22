//
//  upForecastCell.swift
//  TestWeather
//
//  Created by Евгений Черников on 18.09.2023.
//

import Foundation
import UIKit

class UpForecastCell: UITableViewCell {

    lazy var degreeView: DegreeView = UIView.fromNib()
    
//downPart
    lazy var downStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .fill
        stack.distribution = .fill
        return stack
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        addSubview(degreeView)
        degreeView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(10)
            make.bottom.equalTo(-10 )
        }
    }
}
