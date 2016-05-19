Pod::Spec.new do |s|
  s.name         = 'WeChatSDKV1_7'
  s.version      = '1.7'
  s.summary      = 'WeChatSDK Pod v1.7 for Cocoapods convenience'
  s.description  = <<-DESC
                   This pod is used who want to use WeChatSDK v1.7 with podfile.
                   DESC
  s.author       = 'https://open.weixin.qq.com'
  s.homepage     = 'https://open.weixin.qq.com'
  s.license      = {
      :type => 'LGPL',
      :file => "LICENSE"
  }
  s.platform     = :ios, '6.0'
  s.requires_arc = false

  s.source       = { :git => 'https://github.com/crazyhf/WeChatSDKV1_7.git', :tag => 'v#{spec.version}' }

  s.source_files   = "OpenSDK1.7/**/*.h"
  s.preserve_paths = "OpenSDK1.7/libWeChatSDK.a", "OpenSDK1.7/README.txt"
  
  s.vendored_libraries = 'OpenSDK1.7/libWeChatSDK.a'
  s.public_header_files = "OpenSDK1.7/**/*.h"
  
  the_frameworks =  [
                      '"SystemConfiguration"',
                      '"CoreTelephony"'
                    ]
  the_ldflags    = '$(inherited) -lz -lsqlite3 -lc++ -framework ' + the_frameworks.join(' -framework ') + ''

  s.xcconfig = { 'OTHER_LDFLAGS' => the_ldflags }
end
