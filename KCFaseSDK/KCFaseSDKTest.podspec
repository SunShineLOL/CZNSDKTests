Pod::Spec.new do |s|
s.name     = "KCFaseSDKTest"
s.version  = "1.0.3"
s.license  = "MIT"
s.summary  = "KCFaseSDK a framework"
s.homepage = "https://github.com/SunShineLOL/CZNSDKTests"
s.author   = { "陈专念" => "443623074@qq.com" }
s.social_media_url = "https://www.jianshu.com/u/6a0b2eef9af5"
s.source   = { :git => "https://github.com/SunShineLOL/CZNSDKTests.git", :tag => "#{s.version}" }
s.description = %{
我的SDKPodTest````
}
s.vendored_frameworks = 'KCFaseSDK/1.0.3/KCFace.framework'
s.resource  = 'KCFaseSDK/1.0.3/KCFaceBundle.bundle'

#s.resource_bundle = {
#'Paramount' => ['KCFace/KCFace.bundle/*.*']
#}

#s.source_files = 'KCFace/KCFace.framework/Headers/*.swift'
#s.frameworks = 'SystemConfiguration', 'Security', 'CoreGraphics', 'CoreTelephony'
s.requires_arc = true
#s.libraries = 'z', 'sqlite3', 'stdc++', 'iconv'
s.platform = :ios, '9.0'
s.swift_version = '5.0'
#s.dependency 'SnapKit', '~> 4.0.0'
#s.dependency 'AlamofireImage', '~> 3.5'
end
