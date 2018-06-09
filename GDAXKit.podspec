#
#  Be sure to run `pod spec lint GDAXKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GDAXKit"
  s.version      = "0.0.8"
  s.summary      = "Client library for gdax.com's public API"
  s.homepage     = "https://github.com/stevewight/GDAXKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Steve Wight" => "stevendouglaswight@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/stevewight/GDAXKit.git", :tag => "0.0.8" }
  s.source_files = "GDAXKit/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4" }
  s.dependency 'Starscream', '~> 3.0'

end
