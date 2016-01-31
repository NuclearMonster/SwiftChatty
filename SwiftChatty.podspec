Pod::Spec.new do |s|

  s.name  = "SwiftChatty"
  s.version = "0.5"
  s.summary = "WinChatty v2 API Swift framework"
  s.description = "SwiftChatty is an iOS/OSX/tvOS/WatchOS framework written in Swift that models the WinChatty v2 API."
  s.homepage = "http://github.com/andrebocchini/swiftchatty"
  s.license = "MIT"
  s.author = { "Andre Bocchini" => "andrebocchini@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.source  = { :git => "https://github.com/andrebocchini/swiftchatty.git", :tag => "0.5" }
  s.source_files  = "SwiftChatty/**/*.{swift}"
  s.dependency 'Alamofire', '~> 3.1.4'
  s.dependency 'Genome', '~> 2.0'

end
