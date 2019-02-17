//
//  Tools.swift
//  CircleButton
//
//  Created by 周奇天 on 2019/2/17.
//  Copyright © 2019 周奇天. All rights reserved.
//

import UIKit

extension UIImage{
    class func imageFromBundle(named name: String!) -> UIImage? {
        var bundle = Bundle.init(for: DirectionButtonGroup.self)
        if let resourcePath = bundle.path(forResource: "DirectionButton", ofType: "bundle") {
            if let resourcesBundle = Bundle(path: resourcePath) {
                bundle = resourcesBundle
            }
        }
        return UIImage.init(named: name, in: bundle, compatibleWith: nil)
    }
}
