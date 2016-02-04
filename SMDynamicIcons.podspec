#
# Be sure to run `pod lib lint SMDynamicIcons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SMDynamicIcons"
  s.version          = "0.1.1"
  s.summary          = "Generate common icons that fit on any device."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Provides dynamically generated icons that can scale to any size no matter what device or screen resolution they are on. Also, provides ability to use custom colors to suit your needs.
                       DESC

  s.homepage         = "https://github.com/seanmcneil/SMDynamicIcons"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sean McNeil" => "mcneilsean@icloud.com" }
  s.source           = { :git => "https://github.com/seanmcneil/SMDynamicIcons/SMDynamicIcons.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/sean_mcneil>'

  s.platform     = :ios, '8.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SMDynamicIcons' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
