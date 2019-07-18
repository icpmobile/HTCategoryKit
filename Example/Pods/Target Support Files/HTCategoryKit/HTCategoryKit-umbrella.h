#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSFetchRequest+Extensions.h"
#import "NSManagedObject+DictionaryExport.h"
#import "NSManagedObject+Extensions.h"
#import "NSManagedObjectContext+Extensions.h"
#import "NSManagedObjectContext+Fetching.h"
#import "NSManagedObjectContext+FetchRequestsConstructors.h"
#import "NSManagedObjectContext+ObjectClear.h"
#import "NSPersistentStoreCoordinator+Custom.h"
#import "CLLocation+CH1903.h"
#import "CLLocationManager+Blocks.h"
#import "NSArray+Block.h"
#import "NSArray+SafeAccess.h"
#import "NSBundle+AppIcon.h"
#import "NSData+APNSToken.h"
#import "NSData+Base64.h"
#import "NSData+Encrypt.h"
#import "NSData+Gzip.h"
#import "NSData+Hash.h"
#import "NSData+SDDataCache.h"
#import "NSData+zlib.h"
#import "NSDate+CupertinoYankee.h"
#import "NSDate+Extension.h"
#import "NSDate+Formatter.h"
#import "NSDate+InternetDateTime.h"
#import "NSDate+Reporting.h"
#import "NSDate+TimeAgo.h"
#import "NSDate+Utilities.h"
#import "NSDateFormatter+Make.h"
#import "NSDictionary+Block.h"
#import "NSDictionary+JSONString.h"
#import "NSDictionary+Merge.h"
#import "NSDictionary+SafeAccess.h"
#import "NSDictionary+URL.h"
#import "NSDictionary+XML.h"
#import "NSException+Trace.h"
#import "NSFileHandle+readLine.h"
#import "NSFileManager+Paths.h"
#import "NSHTTPCookieStorage+FreezeDry.h"
#import "NSIndexPath+Offset.h"
#import "NSInvocation+Bb.h"
#import "NSInvocation+Block.h"
#import "NSNotificationCenter+MainThread.h"
#import "NSDecimalNumber+CalculatingByString.h"
#import "NSDecimalNumber+Extensions.h"
#import "NSNumber+CGFloat.h"
#import "NSNumber+RomanNumerals.h"
#import "NSNumber+Round.h"
#import "NSObject+AddProperty.h"
#import "NSObject+AppInfo.h"
#import "NSObject+AssociatedObject.h"
#import "NSObject+AutoCoding.h"
#import "NSObject+Blocks.h"
#import "NSObject+EasyCopy.h"
#import "NSObject+GCD.h"
#import "NSObject+KVOBlocks.h"
#import "NSObject+MKBlockTimer.h"
#import "NSObject+Reflection.h"
#import "NSObject+Runtime.h"
#import "NSRunLoop+PerformBlock.h"
#import "NSSet+Block.h"
#import "NSMutableString+Ruby.h"
#import "NSString+Base64.h"
#import "NSString+Contains.h"
#import "NSString+DictionaryValue.h"
#import "NSString+Emoji.h"
#import "NSString+Encrypt.h"
#import "NSString+Hash.h"
#import "NSString+Matcher.h"
#import "NSString+MIME.h"
#import "NSString+Pinyin.h"
#import "NSString+RegexCategory.h"
#import "NSString+RemoveEmoji.h"
#import "NSString+Ruby.h"
#import "NSString+Score.h"
#import "NSString+Size.h"
#import "NSString+Trims.h"
#import "NSString+UrlEncode.h"
#import "NSString+UUID.h"
#import "NSString+XML.h"
#import "NSTimer+Addition.h"
#import "NSTimer+Blocks.h"
#import "NSURL+Param.h"
#import "NSURL+QueryDictionary.h"
#import "NSURLConnection+SelfSigned.h"
#import "NSMutableURLRequest+Upload.h"
#import "NSURLRequest+ParamsFromDictionary.h"
#import "NSUserDefaults+iCloudSync.h"
#import "NSUserDefaults+SafeAccess.h"
#import "UIImage+RoundedCorner.h"
#import "UIView+RoundedCorner.h"
#import "MBProgressHUD+MP.h"
#import "NSString+Additions.h"
#import "JRSwizzle.h"
#import "SYSafeCategory.h"
#import "UIImage+OuterCircle.h"
#import "UITextField+Extension.h"
#import "UIView+Empty.h"
#import "UIView+Extension.h"
#import "CAAnimation+Blocks.h"
#import "CAAnimation+EasingEquations.h"
#import "CALayer+UIColor.h"
#import "CAMediaTimingFunction+AdditionalEquations.h"
#import "CAShapeLayer+UIBezierPath.h"
#import "CATransaction+AnimateWithDuration.h"
#import "UIAlertView+Block.h"
#import "UIApplication+ApplicationSize.h"
#import "UIApplication+KeyboardFrame.h"
#import "UIApplication+NetworkActivityIndicator.h"
#import "UIApplication+Permissions.h"
#import "UIBarButtonItem+Action.h"
#import "UIBezierPath+BasicShapes.h"
#import "UIBezierPath+Length.h"
#import "UIBezierPath+LxThroughPointsBezier.h"
#import "UIBezierPath+SVG.h"
#import "UIBezierPath+Symbol.h"
#import "UIButton+BackgroundColor.h"
#import "UIButton+Block.h"
#import "UIButton+CountDown.h"
#import "UIButton+Indicator.h"
#import "UIButton+JKImagePosition.h"
#import "UIButton+MiddleAligning.h"
#import "UIButton+Submitting.h"
#import "UIButton+TouchAreaInsets.h"
#import "UIColor+flat.h"
#import "UIColor+Gradient.h"
#import "UIColor+HEX.h"
#import "UIColor+Modify.h"
#import "UIColor+Random.h"
#import "UIColor+Web.h"
#import "UIControl+ActionBlocks.h"
#import "UIControl+Block.h"
#import "UIDevice+JKHardware.h"
#import "UIDevice+JKPasscodeStatus.h"
#import "UIFont+DynamicFontControl.h"
#import "UIFont+WDCustomLoader.h"
#import "UIFont-TTF.h"
#import "UIImage+Alpha.h"
#import "UIImage+animatedGIF.h"
#import "UIImage+BetterFace.h"
#import "UIImage+Blur.h"
#import "UIImage+Capture.h"
#import "UIImage+Color.h"
#import "UIImage+FileName.h"
#import "UIImage+FX.h"
#import "UIImage+GIF.h"
#import "UIImage+Merge.h"
#import "UIImage+Orientation.h"
#import "UIImage+PDF.h"
#import "UIImage+RemoteSize.h"
#import "UIImage+Vector.h"
#import "UIImageView+Addition.h"
#import "UIImageView+BetterFace.h"
#import "UIImageView+FaceAwareFill.h"
#import "UIImageView+GeometryConversion.h"
#import "UIImageView+Letters.h"
#import "UIImageView+Reflect.h"
#import "UILabel+AutomaticWriting.h"
#import "UILabel+AutoSize.h"
#import "UILabel+ESAdjustableLabel.h"
#import "UILabel+SuggestSize.h"
#import "UINavigationBar+Awesome.h"
#import "UINavigationController+BATransitions.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "UINavigationController+JZExtension.h"
#import "UINavigationController+KeyboardFix.h"
#import "UINavigationController+StackManager.h"
#import "UINavigationItem+Loading.h"
#import "UINavigationItem+Lock.h"
#import "UINavigationItem+Margin.h"
#import "UIPopoverController+iPhone.h"
#import "UIResponder+Chain.h"
#import "UIResponder+FirstResponder.h"
#import "UIResponder+UIAdapt.h"
#import "UIScreen+Frame.h"
#import "UIScrollView+Addition.h"
#import "UIScrollView+APParallaxHeader.h"
#import "UIScrollView+EmptyDataSet.h"
#import "UIScrollView+Pages.h"
#import "UISearchBar+Blocks.h"
#import "UISplitViewController+QuickAccess.h"
#import "UITableView+iOS7Style.h"
#import "UITableViewCell+NIB.h"
#import "UITableViewCell+TS_delaysContentTouches.h"
#import "UITextField+Blocks.h"
#import "UITextField+History.h"
#import "UITextField+JKInputLimit.h"
#import "UITextField+Select.h"
#import "UITextField+Shake.h"
#import "UITextView+PinchZoom.h"
#import "UITextView+PlaceHolder.h"
#import "UITextView+Select.h"
#import "UIView+Animation.h"
#import "UIView+BadgeValue.h"
#import "UIView+BlockGesture.h"
#import "UIView+Constraints.h"
#import "UIView+CustomBorder.h"
#import "UIView+Debug.h"
#import "UIView+draggable.h"
#import "UIView+Find.h"
#import "UIView+Frame.h"
#import "UIView+GestureCallback.h"
#import "UIView+Nib.h"
#import "UIView+Recursion.h"
#import "UIView+Screenshot.h"
#import "UIView+Shake.h"
#import "UIView+Toast.h"
#import "UIView+ViewController.h"
#import "UIView+Visuals.h"
#import "UIViewController+BackButtonHandler.h"
#import "UIViewController+BackButtonItemTitle.h"
#import "UIViewController+BackButtonTouched.h"
#import "UIViewController+BlockSegue.h"
#import "UIViewController+DDPopUpViewController.h"
#import "UIViewController+MJPopupViewController.h"
#import "UIViewController+StoreKit.h"
#import "UIViewController+TopBarMessage.h"
#import "UIViewController+Visible.h"
#import "UIWebView+Alert.h"
#import "UIWebView+Blocks.h"
#import "UIWebView+Canvas.h"
#import "UIWebView+JS.h"
#import "UIWebView+load.h"
#import "UIWebView+MetaParser.h"
#import "UIWebView+Style.h"
#import "UIWebVIew+SwipeGesture.h"
#import "WebView+Debug.h"
#import "UIWindow+Hierarchy.h"

FOUNDATION_EXPORT double HTCategoryKitVersionNumber;
FOUNDATION_EXPORT const unsigned char HTCategoryKitVersionString[];

