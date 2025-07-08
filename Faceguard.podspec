# LivenessSDK.podspec
Pod::Spec.new do |spec|
  spec.name         = 'Faceguard'
  spec.version      = '1.0.3'
  spec.summary      = 'Faceguard detection SDK'
  spec.description  = 'SDK for Faceguard detection with device intelligence'
  spec.homepage     = 'https://bureau.id'
  spec.license      = 'MIT'
  spec.author       = { 'BureauID' => 'techops@bureau.id' }
  
  spec.platform     = :ios, '13.0'
  spec.source       = { :git => 'https://github.com/Bureau-Inc/faceguard-ios.git', :tag => spec.version.to_s }
  spec.source_files = "Faceguard/**/*.{h,m,swift}"

  # Add resources - storyboards, xibs, images, etc.
  spec.resources = 'Faceguard/**/*.{storyboard,xib,png,jpg,jpeg,gif,json,xcassets}'
  
  spec.swift_version = '5.0'
  spec.vendored_frameworks = '**/*.xcframework'
  
  spec.dependency 'bureau-id-fraud-sdk'

end
