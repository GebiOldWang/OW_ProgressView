Pod::Spec.new do |s|
  s.name         = "OW_ProgressView"
  s.version      = "0.0.1"
  s.summary      = "A circular progress view"
  s.homepage     = "https://github.com/GebiOldWang/OW_ProgressView"
  s.license      = "MIT"
  s.platforms = { :ios => "7.0" }
  s.author             = { "GebiOldWang" => "840226514@qq.com" }
  s.source       = { :git => "https://github.com/GebiOldWang/OW_ProgressView.git", :commit => "260020a68fb99931ea7b7de56a5f826cb8e607ff ", :tag =>"0.0.1" }
  s.source_files  = "OW_ProgressView/**/*.{h,m}"
  s.frameworks  = "UIKit", "QuartzCore"

end
