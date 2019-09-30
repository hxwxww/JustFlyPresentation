
Pod::Spec.new do |s|

  s.name          = "JustFlyPresentation"
  s.version       = "1.0"
  s.summary       = "Custom presentation based on UIPresentationController"

  s.homepage      = "https://github.com/hxwxww/JustFlyPresentation.git"
  s.license       = { :type => "MIT", :file => "LICENSE" }

  s.author        = { "hxwxww" => "hxwxww@163.com" }
  s.platform      = :ios, "8.0"
  s.swift_version = "5.0"

  s.source        = { :git => "https://github.com/hxwxww/JustFlyPresentation.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "JustFlyPresentation/JustFlyJustFlyPresentation/**/*.{h,m,swift}"

  s.frameworks = "UIKit", "Foundation"
  
end
