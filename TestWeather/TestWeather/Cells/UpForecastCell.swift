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
    
    lazy var weatherStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.addArrangedSubview(weatherCollection)
        stack.backgroundColor = .clear
        return stack
    }()
    
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .horizontal
        return layout
    }()
    
    lazy var weatherCollection: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.dataSource = self
        collection.register(UpForecastCollectionCell.self, forCellWithReuseIdentifier: "weatherCollectionCell")
        collection.register(FirstCollectionCell.self, forCellWithReuseIdentifier: "firstCollectionCell")
        collection.register(SecondCollectionCell.self, forCellWithReuseIdentifier: "secondCollectionCell")
        collection.delegate = self
        collection.translatesAutoresizingMaskIntoConstraints = false
//        collection.scrollD
        return collection
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
        contentView.addSubview(degreeView)
        degreeView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(10)
//            make.bottom.equalTo(-10)
        }
        
    
        contentView.addSubview(weatherStack)
        weatherStack.snp.makeConstraints { make in
            make.top.equalTo(degreeView.snp.bottom).offset(20)

            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-10)
	        }
        
        weatherCollection.snp.makeConstraints({$0.height.equalTo(250)})
        
        weatherStack.addArrangedSubview(weatherCollection)
            
        
    }
}

extension UpForecastCell: UICollectionViewDataSource, UICollectionViewDelegate  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0 :
            guard let cell = weatherCollection.dequeueReusableCell(withReuseIdentifier: "firstCollectionCell", for: indexPath) as? FirstCollectionCell else {
                return UICollectionViewCell()
            }
            return cell

        default:
            guard let cell = weatherCollection.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as? SecondCollectionCell else {
                return UICollectionViewCell()
            }
            return cell
        }
    }

}

