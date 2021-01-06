source 'https://github.com/CocoaPods/Specs.git'
source 'git@github.com:globoi/pods-repository.git'
# source 'https://github.com/lohanmarques/provider-modules-poc.git'

platform :ios, '11.0'

use_frameworks!
inhibit_all_warnings!

def private_pods
  pod 'Version',      :git => 'https://github.com/lohanmarques/provider-modules-poc.git', :branch => 'test' #, :path => '../provider-modules-poc/'
  pod 'VideoQuality', :git => 'https://github.com/lohanmarques/provider-modules-poc.git', :branch => 'test' #, :path => '../provider-modules-poc/'
end

def globo_pods
  pod 'PlayKitGlobo', '3.1.12'
  pod 'Playkit', '1.5.30'
end

target 'consumer' do
  private_pods
end

target 'consumerTests' do
  inherit! :search_paths
end

target 'consumerUITests' do
  inherit! :search_paths
end
