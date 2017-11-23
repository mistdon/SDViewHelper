//
//  UIView+IBnspectable.h
//  Pods
//
//  Created by shendong on 2017/11/23.
//

#import <UIKit/UIKit.h>

@interface UIView (IBnspectable)

@property (assign, nonatomic) IBInspectable CGFloat cornerRadius;
@property (assign, nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic, nonnull) IBInspectable UIColor *borderColor;
//! horizonal height: 1px
@property (assign, nonatomic) IBInspectable BOOL horizonalOnePx;
//! vertical height: 1px
@property (assign, nonatomic) IBInspectable BOOL verticalOnePx;

@end
