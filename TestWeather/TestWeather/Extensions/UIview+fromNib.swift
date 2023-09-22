//
//  UIview+fromNib.swift
//  TestWeather
//
//  Created by Евгений Черников on 20.09.2023.
//

import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

