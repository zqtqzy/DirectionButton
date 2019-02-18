#
#  Be sure to run `pod spec lint DirectionButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "DirectionButton"
  s.version      = "0.0.5"
  s.summary      = "方向按钮"
  s.homepage     = "https://github.com/zqtqzy/DirectionButton"
  s.license      = { :type => "MIT" }
  s.author             = { "zhouqitian" => "zqtqzy@163.com" }
  spec.module_name = 'DirectionButtonGroup'
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/zqtqzy/DirectionButton.git", :tag => "0.0.5" }
  s.source_files  = "DirectionButton/*.swift"
  s.resource = 'DirectionButton/DirectionButton.bundle'
  s.framework  = "UIKit"
  s.swift_version = "4.2"


end
