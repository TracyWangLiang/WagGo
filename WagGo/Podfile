# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'WagGo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for WagGo
  pod 'SVProgressHUD'
  pod 'AFNetworking'
  pod 'MJRefresh'
  pod 'SDWebImage'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 15.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end
      # or
#      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
