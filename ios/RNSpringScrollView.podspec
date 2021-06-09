require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSpringScrollView"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.license      = package["license"]
  s.platforms    = { :ios => "7.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/groovetch/greact-native-spring-scrollview.git", :tag => s.version }
  s.source_files  = "SpringScrollView/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
