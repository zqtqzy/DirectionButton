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
        

        
        let btn = DirectionButton.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        btn.center = view.center
        btn.tapDelegate = self
        
        view.addSubview(btn)
    }

    
    /// 状态栏样式
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    /// 状态栏是否隐藏
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    /// 状态栏的隐藏与显示动画样式
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }

}

extension ViewController: DirectionButtonDelegate{
    func didTapDirectionButton(direction: ButtonDirection) {
        // Tap DirectionButton Action
        print(direction.rawValue)
    }
    
    func didTapCenterButton() {
        // Tap CenterButton Action
        print("tap Center")
        
    }
}

