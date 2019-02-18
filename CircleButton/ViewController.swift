//
//  ViewController.swift
//  CircleButton
//
//  Created by 周奇天 on 2019/2/13.
//  Copyright © 2019 周奇天. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = DirectionButton.init(frame: CGRect.init(x: 100, y: 100, width: 200, height: 200))
        btn.tapDelegate = self
        
        view.addSubview(btn)
    }


}

extension ViewController: DirectionButtonDelegate{
    func didTapDirectionButton(direction: ButtonDirection) {
        // Tap DirectionButton Action
    }
    
    func didTapCenterButton() {
        // Tap CenterButton Action
        
    }
}

