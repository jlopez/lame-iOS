Pod::Spec.new do |s|
  s.name         = "LAME"
  s.version      = "3.99"
  s.summary      = "LAME static libraries compiled for iOS"
  s.homepage     = "https://github.com/jlopez/lame-iOS"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Jesus Lopez" => "jesus@jesusla.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/jlopez/lame-iOS.git", :tag => "3.99", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'lame-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'lame-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'lame-ios-static-libs/include'
    ss.vendored_libraries  = 'lame-ios-static-libs/lib/*.a'
    ss.libraries = 'mp3lame'
  end

end
