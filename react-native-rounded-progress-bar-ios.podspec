require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-rounded-progress-bar-ios"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-rounded-progress-bar-ios
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-rounded-progress-bar-ios"
  s.license      = "MIT"
  s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Alejo Castaño" => "drskantus@hotmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-rounded-progress-bar-ios.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

