require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package["version"]
  s.summary      = "react-native-payments"
  s.description  = <<-DESC
                  Native Payments (Google and Apple Pay) from React-Native
                   DESC
  s.homepage     = package['repository']
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/roy8119425/react-native-payments.git", :tag => "#{s.version}" }
  s.source_files  = "lib/ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
