Pod::Spec.new do |s|
  s.name           = "Apsalar"
  s.version        = "6.0.6"
  s.summary        = "Apsalar for iOS SDK."
  s.description    = "Apsalar for iOS SDK."
  s.homepage       = "http://www.apsalar.com"
  s.license        = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyrigth 2010-2014 Apsalar Inc. All rights reserved.
      LICENSE
  }
  s.author         = 'Apsalar Inc.'
  s.source         = {
    :git => "https://github.com/adaptiv-io/Apsalar.git",
    :tag => s.version.to_s
  }
  s.platform       = :ios, '8.0'
  s.source_files   = 'Apsalar-iOS-SDK/Library/*.h'
  s.resources      = 'Apsalar-iOS-SDK/Library/*.js'
  s.preserve_paths = 'Apsalar-iOS-SDK/Library/*.a'
  s.frameworks     = 'SystemConfiguration', 'Security'
  s.library        = 'Apsalar', 'z', 'sqlite3.0'
  s.xcconfig       = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/apsalar/Apsalar-iOS-SDK/Library"'
  }
end
