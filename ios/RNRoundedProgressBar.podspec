
Pod::Spec.new do |s|
  s.name         = "RNRoundedProgressBar"
  s.version      = "1.0.0"
  s.summary      = "RNRoundedProgressBar"
  s.description  = <<-DESC
                  RNRoundedProgressBar
                   DESC
  s.homepage     = "https://github.com/skantus/react-native-rounded-progress-bar-ios"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/skantus/react-native-rounded-progress-bar-ios.git", :tag => "master" }
  s.source_files  = "RNRoundedProgressBar/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end
