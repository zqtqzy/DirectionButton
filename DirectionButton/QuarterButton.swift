//
//  QuarterButton.swift
//  CircleButton
//
//  Created by 周奇天 on 2019/2/13.
//  Copyright © 2019 周奇天. All rights reserved.
//

import UIKit

public enum ButtonDirection: String {
    case ButtonDirectionTop = "Top"
    case ButtonDirectionLeft = "Left"
    case ButtonDirectionBottom = "Bottom"
    case ButtonDirectionRight = "Right"
}

class QuarterButton: UIButton {

    var buttonDirection: ButtonDirection = .ButtonDirectionTop{
        didSet{
            setupShapeWithDirection(direction: buttonDirection)
        }
    }
    
    var circleProportion: CGFloat = 47.0/130.0
    
    
    convenience init(frame: CGRect!, direction: ButtonDirection!) {
        self.init(frame: frame)
        buttonDirection = direction
        setImage(UIImage.imageFromBundle(named: "btn_direction_n"), for: .normal)
        setImage(UIImage.imageFromBundle(named: "btn_direction_s"), for: .highlighted)
        setupShapeWithDirection(direction: direction)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupShapeWithDirection(direction: buttonDirection)
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
    
    private func formateMaskPath() -> UIBezierPath! {
        let outerLeft: CGPoint = CGPoint.init(x: 0.0, y: 0.0)
        let innerLeft: CGPoint = CGPoint.init(x: 0.0, y: frame.size.height * circleProportion)
        let innerRight: CGPoint = CGPoint.init(x: frame.size.width * circleProportion, y: frame.size.height)
        let center: CGPoint = CGPoint.init(x: 0.0, y: frame.size.height)
        
        let path: UIBezierPath = UIBezierPath.init()
        path.move(to: innerLeft)
        path.addLine(to: outerLeft)
        path.addArc(withCenter: center, radius: frame.size.height, startAngle: -.pi/2.0, endAngle: 0, clockwise: true)
        path.addLine(to: innerRight)
        path.addArc(withCenter: center, radius: frame.size.height * circleProportion, startAngle: 0, endAngle: -.pi/2.0, clockwise: false)
        path.close()
        return path
    }
    
    private func setupShapeWithDirection(direction: ButtonDirection!) {
        switch direction {
        case .ButtonDirectionTop?:
            transform = CGAffineTransform.init(rotationAngle: 0)
        case .ButtonDirectionLeft?:
            transform = CGAffineTransform.init(rotationAngle: .pi/2*3)
        case .ButtonDirectionBottom?:
            transform = CGAffineTransform.init(rotationAngle: .pi)
        case .ButtonDirectionRight?:
            transform = CGAffineTransform.init(rotationAngle: .pi/2)
        default:
            break
        }
    }
    
}
