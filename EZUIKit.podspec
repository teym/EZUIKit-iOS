Pod::Spec.new do |s|
  s.name     = 'EZUIKit'
  s.version  = '1.0.9'
  s.license  = 'MIT'
  s.summary  = 'A UI show video'
  s.homepage = 'https://github.com/Hikvision-Ezviz/EZUIKit-iOS'
  s.authors  = {'ezviz-LinYong' => 'linyong3@hikvision.com'}
  s.source   = {:git => 'https://github.com/Hikvision-Ezviz/EZUIKit-iOS.git',:tag => s.version,:submodules => true}
  s.requires_arc = true
  s.platform = :ios,'8.0'
  s.source_files = 'dist/EZUIKit/include/*.h'
  s.vendored_libraries = 'dist/EZUIKit/*.a'
  s.frameworks = 'AVFoundation','AudioToolbox','OpenAL','VideoToolbox','CoreMedia'
  s.libraries = 'iconv','c++','stdc++.6.0.9'
  s.default_subspec = 'Openssl', 'EZOpenSDK'
  
s.subspec 'Openssl' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.source_files = 'dist/Openssl/include/openssl/*.h'
  ss.frameworks = 'AVFoundation','AudioToolbox','OpenAL','VideoToolbox','CoreMedia'
  ss.libraries = 'iconv','c++','stdc++.6.0.9'
  ss.vendored_libraries = 'dist/Openssl/lib/*.a'
end

s.subspec 'EZOpenSDK' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.source_files = 'dist/EZOpenSDK/include/*.h'
  ss.frameworks = 'AVFoundation','AudioToolbox','OpenAL','VideoToolbox','CoreMedia'
  ss.libraries = 'iconv','c++','stdc++.6.0.9'
  ss.vendored_libraries = 'dist/EZOpenSDK/*.a'

end


end