Pod::Spec.new do |spec|


spec.name         = "KCFaceTest"
spec.version      = "1.0.0"
spec.summary      = "可充面部识别SDK"
spec.description  = <<-DESCRIPTION
pod spec create xx
DESCRIPTION

spec.homepage     = "https://github.com/SunShineLOL"
spec.license      = "None"
spec.author       = { "chenzhuannian" => "443623074@qq.com" }
spec.source       = { :git => 'https://github.com/SunShineLOL/CZNSDKTests.git', :tag => spec.version.to_s }
spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

# spec.static_framework = true
spec.requires_arc = true
spec.platform     = :ios, '9.0'
spec.frameworks = 'KCFase'
spec.resource  = "KCFaceBundle.bundle"
spec.swift_version = '5.0'

#spec.dependency 'Chrysan'
#spec.dependency 'SnapKit', '~> 4.0.0'
# spec.dependency 'AlamofireImage', '~> 3.5'

end
