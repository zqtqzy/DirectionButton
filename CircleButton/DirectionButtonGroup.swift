//
//  DirectionButtonGroup.swift
//  CircleButton
//
//  Created by 周奇天 on 2019/2/13.
//  Copyright © 2019 周奇天. All rights reserved.
//

import UIKit

protocol DirectionButtonGroupDelegate: class {
    func didTapDirectionButton(direction: ButtonDirection)
    func didTapCenterButton()
}

extension DirectionButtonGroupDelegate{
    func didTapCenterButton() {
        
    }
}

class DirectionButtonGroup: UIView {
    
    var seperate: CGFloat = 15.0
    
    var showCenterButton: Bool = true{
        didSet{
            centerButton.isHidden = !showCenterButton
        }
    }
    
    weak var tapDelegate: DirectionButtonGroupDelegate?
    
    private lazy var topButton: QuarterButton = {
        let tempView = QuarterButton.init(frame: CGRect.zero, direction: .ButtonDirectionTop)
        tempView.addTarget(self, action: #selector(tapDirectionButton(sender:)), for: .touchUpInside)
        self.addSubview(tempView)
        return tempView
    }()
    private lazy var leftButton: QuarterButton = {
        let tempView = QuarterButton.init(frame: CGRect.zero, direction: .ButtonDirectionLeft)
        tempView.addTarget(self, action: #selector(tapDirectionButton(sender:)), for: .touchUpInside)
        self.addSubview(tempView)
        return tempView
    }()
    private lazy var bottomButton: QuarterButton = {
        let tempView = QuarterButton.init(frame: CGRect.zero, direction: .ButtonDirectionBottom)
        tempView.addTarget(self, action: #selector(tapDirectionButton(sender:)), for: .touchUpInside)
        self.addSubview(tempView)
        return tempView
    }()
    private lazy var rightButton: QuarterButton = {
        let tempView = QuarterButton.init(frame: CGRect.zero, direction: .ButtonDirectionRight)
        tempView.addTarget(self, action: #selector(tapDirectionButton(sender:)), for: .touchUpInside)
        self.addSubview(tempView)
        return tempView
    }()
    
    private lazy var centerButton: CenterButton = {
        let tempView = CenterButton.init(frame: CGRect.zero)
        tempView.addTarget(self, action: #selector(tapCenterButton), for: .touchUpInside)
        tempView.setImage(UIImage.init(named: "btn_pause2"), for: .normal)
        tempView.setImage(UIImage.init(named: "btn_pause_s2"), for: .highlighted)
        self.addSubview(tempView)
        return tempView
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let length: CGFloat = (frame.size.width - seperate)/2.0
        
        leftButton.frame = CGRect.init(x: 0, y: 0, width: length, height: length)
        topButton.frame = CGRect.init(x: length + seperate, y: 0, width: length, height: length)
        rightButton.frame = CGRect.init(x: length + seperate, y: length + seperate, width: length, height: length)
        bottomButton.frame = CGRect.init(x: 0, y: length + seperate, width: length, height: length)
        
        let centerButtonHeight = (leftButton.frame.size.width * leftButton.circleProportion - seperate) * 2 + seperate
        centerButton.frame = CGRect.init(x: 0, y: 0, width: centerButtonHeight, height: centerButtonHeight)
        centerButton.center = CGPoint.init(x: frame.size.width/2.0, y: frame.size.height/2.0)
        
        centerButton.isHidden = !showCenterButton
        
        transform = CGAffineTransform.init(rotationAngle: -.pi/4.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc private func tapDirectionButton(sender: QuarterButton) {
        tapDelegate?.didTapDirectionButton(direction: sender.buttonDirection)
    }
    
    @objc private func tapCenterButton() {
        tapDelegate?.didTapCenterButton()
    }
    
    

}
