#
# Be sure to run `pod lib lint JXPayKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JXPayKit'
  s.version          = '0.0.3'
  s.summary          = 'iOS Pay Framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
						iOS Pay Framework using ObjC.
                       DESC

  s.homepage         = 'https://github.com/tospery/JXPayKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tospery' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/JXPayKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc = true
  s.static_framework = true
  s.ios.deployment_target = '10.0'

  s.frameworks = 'Foundation'
  # s.source_files = 'JXPayKit/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.default_subspec = "Core"
  
  s.subspec "Core" do |ss|
    ss.source_files = "JXPayKit/*.{h,m}"
  end
  
  s.subspec "ApplePay" do |ss|
    ss.source_files = "JXPayKit/ApplePay/*.{h,m}"
    ss.dependency "JXPayKit/Core"
  end
  
  s.subspec "WXPay" do |ss|
    ss.source_files = "JXPayKit/WXPay/*.{h,m}"
  	ss.dependency 'WechatOpenSDK', '1.8.7.1'
	ss.dependency "JXPayKit/Core"
  end
  
  s.subspec "Alipay" do |ss|
    ss.source_files = "JXPayKit/Alipay/*.{h,m}"
    ss.dependency "JXPayKit/Core"
  end
  
end
