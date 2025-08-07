Pod::Spec.new do |s|
  s.name             = 'SnapmintMerchantSdk'
  s.version          = '1.0.6'
  s.summary          = 'Snapmint Merchant iOS SDK'
  s.description      = <<-DESC
    SnapmintMerchantSdk lets merchants offer Snapmint payment
    options with only a few lines of code.
  DESC

  s.homepage         = 'https://github.com/snapmint/snapmint_merchant_ios_sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Snapmint' => 'support@snapmint.com' }

  s.platform         = :ios, '15.0'
  s.swift_version    = '5.9'
  s.requires_arc     = true

  # Vendored XCFramework
  s.vendored_frameworks = 'Sources/SnapmintMerchantSdk.xcframework'

  # Fonts bundled inside the framework
  s.resources        = 'Sources/SnapmintMerchantSdk.xcframework/**/*.{ttf}'

  s.source           = {
    :git => 'https://github.com/snapmint/snapmint_merchant_ios_sdk.git',
    :tag => s.version.to_s
  }

  # Optional: silence simulator-arm64 duplicate symbols warning
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
