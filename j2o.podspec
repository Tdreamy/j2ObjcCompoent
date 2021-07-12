Pod::Spec.new do |s|
  s.name         = "j2o"
  s.version      = "1.0.0"
  s.summary      = "j2objc test"
  s.description  = "call Jave test"

  s.homepage     = "https://github.com"
  s.license      = { :type => "MIT", :file => "License.md" }
  s.author             = { "zty" => "dtreamy1992@163.com" }
  s.source       = { :git => "", :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.source_files = 'j2o/*.{h,m}'
  s.libraries = 'iconv'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ljre_emul' }
end
