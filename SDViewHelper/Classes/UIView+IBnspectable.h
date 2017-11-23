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
@property (strong, nonatomic, nonnull) IBInspectable UIColor *borderColor;

@property (assign, nonatomic) IBInspectable BOOL hOnePx; //水平宽度1px
@property (assign, nonatomic) IBInspectable BOOL vOnePx; //竖直高度1px

@end
