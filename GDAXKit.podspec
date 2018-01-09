#
#  Be sure to run `pod spec lint GDAXKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GDAXKit"
  s.version      = "0.0.1"
  s.summary      = "Open source client library for accessing gdax.com's public market data"
  s.homepage     = "http://github.com/stevewight"
  s.license      = "MIT"
  s.author       = { "Steve Wight" => "stevendouglaswight@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/stevewight/GDAXKit.git", :tag => "0.0.1" }
  s.source_files = "GDAXKit/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4" }
  s.dependency 'Starscream', '~> 3.0'

end
