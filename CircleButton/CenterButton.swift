//
//  CenterButton.swift
//  CircleButton
//
//  Created by 周奇天 on 2019/2/17.
//  Copyright © 2019 周奇天. All rights reserved.
//

import UIKit

class CenterButton: UIButton {
    
    private func formateMaskPath() -> UIBezierPath! {
        let tempPath = UIBezierPath.init(ovalIn: CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        return tempPath
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let res = super.point(inside: point, with: event)
        if res == true {
            if formateMaskPath().contains(point){
                return true
            }
            return false
        }
        return res
    }

}
