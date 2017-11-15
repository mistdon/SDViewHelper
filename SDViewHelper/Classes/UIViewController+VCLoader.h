//
//  UIViewController+VCLoader.h
//  Expecta
//
//  Created by shendong on 2017/11/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

NS_CLASS_AVAILABLE_IOS(8_0) @interface UIViewController (VCLoader)

+ (instancetype)sd_viewController:(NSString*)controllerClassName inStoryboard:(NSString*)storyboardName arguments:(nullable NSDictionary*)args;
// MARK: - Create a new vc with hardcode or xib(mark sure you xib file name is equal to your class name);
+ (instancetype)sd_viewController:(NSString*)controllerBaseName arguments:(nullable NSDictionary*)args;

@end

NS_ASSUME_NONNULL_END
