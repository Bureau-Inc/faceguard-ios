Pod::Spec.new do |spec|
  spec.name         = 'Faceguard'
  spec.version      = '1.1.2'
  spec.summary      = 'Faceguard detection SDK'
  spec.description  = 'SDK for Faceguard detection with device intelligence'
  spec.homepage     = 'https://bureau.id'
  spec.license      = { :type => 'Commercial', :text => 'Copyright © BureauID. All rights reserved.' }
  spec.author       = { 'BureauID' => 'techops@bureau.id' }

  spec.platform     = :ios, '13.0'
  spec.source       = { :git => 'https://github.com/Bureau-Inc/faceguard-ios.git', :tag => spec.version.to_s }

  spec.swift_version = '5.0'
  spec.vendored_frameworks = 'Framework/Faceguard.xcframework'

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  spec.dependency 'bureau-id-fraud-sdk', '4.0.0'

end
