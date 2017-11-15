//
//  UIViewController+VCLoader.m
//  Expecta
//
//  Created by shendong on 2017/11/15.
//

#import "UIViewController+VCLoader.h"
#import <objc/runtime.h>

@implementation UIViewController (VCLoader)

+ (instancetype)viewController:(NSString*)controllerClassName inStoryboard:(nullable NSString*)storyboardName arguments:(nullable NSDictionary *)args{
    UIViewController* controller = nil;
    if (storyboardName.length > 0 ) {
//        if (storyboardName.length > 0) {
            UIStoryboard* storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:[NSBundle mainBundle]];
            controller = [storyboard instantiateViewControllerWithIdentifier:controllerClassName];
//        }else if (nibName.length > 0){
//            Class vcClass = NSClassFromString(controllerClassName);
//            if ([vcClass isMemberOfClass:[UIViewController class]]) {
//                controller = [[UIViewController alloc] initWithNibName:nibName bundle:[NSBundle mainBundle]];
//            }
//        }
    }else{
        controller = [NSClassFromString(controllerClassName) new];
    }
    NSParameterAssert(controller);
    if(args && [args count] > 0){
        //bind property values
        unsigned int propertyCount = 0;
        objc_property_t* properties = class_copyPropertyList([controller class], &propertyCount);
        for(unsigned int i = 0 ; i < propertyCount; i++){
            objc_property_t property = *(properties + i);
            const char* propertyName = property_getName(property);
            NSString* propertyNameNS = [NSString stringWithUTF8String:propertyName];
            if(args[propertyNameNS])
            {
                [controller setValue:args[propertyNameNS] forKeyPath:propertyNameNS];
            }
        }
    }
    return controller;
}
// MARK: - public method
+ (instancetype)sd_viewController:(NSString *)controllerBaseName arguments:(NSDictionary *)args{
    return [self viewController:controllerBaseName inStoryboard:nil arguments:args];
}
+ (instancetype)sd_viewController:(NSString *)controllerClassName inStoryboard:(NSString *)storyboardName arguments:(NSDictionary *)args{
    return [self viewController:controllerClassName inStoryboard:storyboardName arguments:args];
}
//+ (instancetype)sd_viewController:(NSString *)controllerClassName inNib:(NSString *)nibName arguments:(NSDictionary *)args{
//    return [self viewController:controllerClassName inStoryboard:nil  arguments:args];
//}

@end
