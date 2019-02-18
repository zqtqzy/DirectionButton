#
#  Be sure to run `pod spec lint DirectionButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "DirectionButton"
  s.version      = "0.0.6"
  s.summary      = "方向按钮."

  s.description  = <<-DESC
                    可自定义的方向按钮
                   DESC
  s.homepage     = "https://github.com/zqtqzy/DirectionButton"

  s.license      = { :type => "MIT" }

  s.author             = { "zhouqitian" => "zhouqitian@sansi.com" }
 
  s.platform     = :ios, "10.0"


  s.source       = { :git => "https://github.com/zqtqzy/DirectionButton.git", :tag => "0.0.6" }

  s.source_files  = "DirectionButton/*.swift"
  s.resource = 'DirectionButton/DirectionButton.bundle'

  s.framework  = "UIKit"
  s.swift_version = "4.2"

end
