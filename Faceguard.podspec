# LivenessSDK.podspec
Pod::Spec.new do |spec|
  spec.name         = "Faceguard"
  spec.version      = "1.0.0"
  spec.summary      = "Faceguard detection SDK"
  spec.description  = "SDK for Faceguard detection with device intelligence"
  spec.homepage     = "https://bureau.id"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "BureauID" => "techops@bureau.id" }
  
  spec.platform     = :ios, "13.0"
  spec.source       = { :path => "." }
  spec.source_files = "Liveness/**/*.{h,m,swift}"

  # Add resources - storyboards, xibs, images, etc.
  spec.resources = "Liveness/**/*.{storyboard,xib,png,jpg,jpeg,gif,json,xcassets}"
  
  spec.swift_version = "5.0"
  spec.vendored_frameworks = '**/*.xcframework'
  
  spec.dependency "bureau-id-fraud-sdk"

end
