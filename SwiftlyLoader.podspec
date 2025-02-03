Pod::Spec.new do |s|
  s.name             = 'SwiftlyLoader'
  s.version          = '1.0.3'
  s.summary          = 'A lightweight, customizable loading indicator for iOS applications.'

  s.description      = <<-DESC
                        SwiftlyLoader is a simple and customizable loading indicator for iOS applications. It provides easy-to-use API methods for displaying a loading animation while performing background tasks. The library supports full customization, including indicator size, colors, and corner radius.
                        DESC

  s.homepage         = 'https://github.com/tusharvijay24/SwiftlyLoader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tushar Vijayvargiya' => 'tusharvijayvargiya24112000@gmail.com' }
  s.source           = { :git => 'https://github.com/tusharvijay24/SwiftlyLoader.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version    = '5.0'

  s.source_files = 'SwiftlyLoader/Classes/**/*.{swift}'
end
