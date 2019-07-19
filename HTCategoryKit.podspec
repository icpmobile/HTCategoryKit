#
# Be sure to run `pod lib lint HTCategoryKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTCategoryKit'
  s.version          = '0.1.2'
  s.summary          = 'ICP-Mobile 项目 组件库之分类组件 HTCategory.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/icpmobile/HTCategoryKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lqve521' => 'lqve521@163.com' }
  s.source           = { :git => 'https://github.com/icpmobile/HTCategoryKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'HTCategoryKit/Classes/**/*'

  # s.resource_bundles = {
  #   'HTCategoryKit' => ['HTCategoryKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'CoreData' do |si|
    si.source_files = 'HTCategoryKit/Classes/CoreData/**/*'
  end
  
  s.subspec 'CoreLocation' do |lo|
    lo.source_files = 'HTCategoryKit/Classes/CoreLocation/**/*'
  end
  
  s.subspec 'QuartzCore' do |qt|
    qt.source_files = 'HTCategoryKit/Classes/QuartzCore/**/*'
  end
  
  s.subspec 'Other' do |ot|
    ot.source_files = 'HTCategoryKit/Classes/Other/**/*'
    ot.dependency 'MBProgressHUD'
  end
  
  
  s.subspec 'Foundation' do |ss|
    ss.subspec 'NSArray' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSArray'
    end
    ss.subspec 'NSBundle' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSBundle'
    end
    ss.subspec 'NSData' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSData'
    end
    ss.subspec 'NSDate' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSDate'
    end
    ss.subspec 'NSDateFormatter' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSDateFormatter'
    end
    ss.subspec 'NSDictionary' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSDictionary'
    end
    ss.subspec 'NSException' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSException'
    end
    ss.subspec 'NSFileHandle' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSFileHandle'
    end
    ss.subspec 'NSFileManager' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSFileManager'
    end
    ss.subspec 'NSHTTPCookieStorage' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSHTTPCookieStorage'
    end
    ss.subspec 'NSIndexPath' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSIndexPath'
    end
    ss.subspec 'NSInvocation' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSInvocation'
    end
    ss.subspec 'NSNotificationCenter' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSNotificationCenter'
    end
    ss.subspec 'NSNumber' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSNumber'
    end
    ss.subspec 'NSObject' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSObject'
    end
    ss.subspec 'NSRunLoop' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSRunLoop'
    end
    ss.subspec 'NSSet' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSSet'
    end
    ss.subspec 'NSString' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSString'
      ns.dependency 'HTCategoryKit/Foundation/NSData'
    end
    ss.subspec 'NSTimer' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSTimer'
    end
    ss.subspec 'NSURL' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSURL'
    end
    ss.subspec 'NSURLConnection' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSURLConnection'
    end
    ss.subspec 'NSURLRequest' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSURLRequest'
    end
    ss.subspec 'NSUserDefaults' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/Foundation/NSUserDefaults'
    end
  end
  
  
  s.subspec 'UIKit' do |ss|
    ss.subspec 'UIAlertView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIAlertView'
    end
    ss.subspec 'UIApplication' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIApplication'
    end
    ss.subspec 'UIBarButtonItem' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIBarButtonItem'
    end
    ss.subspec 'UIBezierPath' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIBezierPath'
    end
    ss.subspec 'UIButton' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIButton'
    end
    ss.subspec 'UIColor' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIColor'
    end
    ss.subspec 'UIControl' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIControl'
    end
    ss.subspec 'UIDevice' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIDevice'
    end
    ss.subspec 'UIFont' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIFont'
    end
    ss.subspec 'UIImage' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIImage'
    end
    ss.subspec 'UIImageView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIImageView'
    end
    ss.subspec 'UILable' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UILable'
    end
    ss.subspec 'UINavigationBar' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UINavigationBar'
    end
    ss.subspec 'UINavigationController' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UINavigationController'
    end
    ss.subspec 'UINavigationItem' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UINavigationItem'
    end
    ss.subspec 'UIPopoverController' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIPopoverController'
    end
    ss.subspec 'UIResponder' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIResponder'
    end
    ss.subspec 'UIScreen' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIScreen'
    end
    ss.subspec 'UIScrollView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIScrollView'
    end
    ss.subspec 'UISearchBar' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UISearchBar'
    end
    ss.subspec 'UISplitViewController' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UISplitViewController'
    end
    ss.subspec 'UITableView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UITableView'
    end
    ss.subspec 'UITableViewCell' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UITableViewCell'
    end
    ss.subspec 'UITextView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UITextView'
    end
    ss.subspec 'UIView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIView'
    end
    ss.subspec 'UIViewController' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIViewController'
    end
    ss.subspec 'UIWebView' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIWebView'
      ns.dependency 'HTCategoryKit/UIKit/UIColor'
    end
    ss.subspec 'UIWindow' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UIWindow'
    end
    ss.subspec 'UITextField' do |ns|
      ns.source_files = 'HTCategoryKit/Classes/UIKit/UITextField'
      ns.dependency 'HTCategoryKit/UIKit/UIView'
    end
    
  end
  
  
  
  
end
