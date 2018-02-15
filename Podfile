# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

def rx_swift
    pod 'RxSwift', '~> 4.0'
end

def rx_cocoa
    pod 'RxCocoa', '~> 4.0'
end

def test_pods
    pod 'RxTest', '~> 4.0'
    pod 'RxBlocking', '~> 4.0'
    pod 'Nimble'
end

target 'MVVMRxSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MVVMRxSwift
  rx_cocoa
  rx_swift
  pod 'QueryKit'
  target 'MVVMRxSwiftTests' do
      inherit! :search_paths
      test_pods
  end

end

target 'Domain' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    rx_swift
    
    target 'DomainTests' do
        inherit! :search_paths
        test_pods
    end
    
end

target 'NetworkPlatform' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    rx_swift
    pod 'Alamofire'
    pod 'RxAlamofire'
    pod 'ObjectMapper'
    pod 'AlamofireObjectMapper'
    
    target 'NetworkPlatformTests' do
        inherit! :search_paths
        test_pods
    end
    
end

target 'RealmPlatform' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    rx_swift
    pod 'RealmSwift'
    pod 'RxRealm'
    pod 'QueryKit'
    
    target 'RealmPlatformTests' do
        inherit! :search_paths
        test_pods
    end
    
end
#
#post_install do |installer|
#    installer.pods_project.targets.each do |target|
#        target.build_configurations.each do |config|
#            config.build_settings['SWIFT_VERSION'] = '4.0'
#        end
#    end
#end

