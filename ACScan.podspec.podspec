Pod::Spec.new do |s|
  s.name          = "ACScan"
  s.version       = "1.0.0"
  s.summary       = "Just a scaner"
  s.ios.deployment_target = "7.0"
  s.description   = <<-DESC
                   a scaner
                   DESC
  s.homepage      = "https://github.com/AllanChen/ACScan.git"
  #s.frameworks    = "QuartzCore", "UIKit"
  s.license       = "MIT (example)"
  s.author        = { "Allan" => "cyjian0@gmail.com" }
  s.source        = { :git => "https://github.com/AllanChen/ACScan.git", :tag => "0.0.1" }
  s.source_files  = "WeChatScan", "WeChatScan/**/*.{h,m,mm,c,xib}","WeChatScan/**/*.{h,m,mm,c,xib}"
  s.resources     = ["WeChatScan/Resource/*.png","WeChatScan/ScanQRCodeViewController.xib"]
  s.resource      = ["WeChatScan/ScanQRCodeViewController.xib"]
  s.dependency "Masonry"
  s.dependency "ZXingObjC", "~> 3.1.0"
  s.dependency "MBProgressHUD", "~> 0.9.2"
  s.platform      = :ios, "7.0"
  
  #s.exclude_files  = "Classes/Exclude"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  # s.platform     = :ios
  # s.platform     = :ios, "5.0"
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"  
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  # s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end