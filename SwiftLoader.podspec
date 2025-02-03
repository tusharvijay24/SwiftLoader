Pod::Spec.new do |spec|
  spec.name         = "SwiftLoader"
  spec.version      = "1.0.0"
  spec.summary      = "A simple customizable loading indicator for iOS."
  spec.description  = "SwiftLoader is a lightweight and customizable loading indicator for iOS applications."
  spec.homepage     = "https://github.com/tusharvijay24/SwiftLoader"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Tushar Vijayvargiya" => "tusharvijayvargiya24112000@gmail.com" }
  spec.source       = { :git => "https://github.com/tusharvijay24/SwiftLoader.git", :tag => spec.version.to_s }
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"

  spec.source_files = "SwiftLoader/**/*.{swift}"
end
