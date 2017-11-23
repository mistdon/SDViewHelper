//
//  UIView+IBnspectable.m
//  Pods
//
//  Created by shendong on 2017/11/23.
//

#import "UIView+IBnspectable.h"

@implementation UIView (IBnspectable)

@dynamic vOnePx, hOnePx, cornerRadius, borderColor, borderWidth;

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth
{
    return self.layer.borderWidth;
}

- (void)setBorderColor:(nonnull UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (nonnull UIColor *)borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (BOOL)isHOnePx
{
    return self.hOnePx;
}

- (void)setHOnePx:(BOOL)hOnePx
{
    if(hOnePx) {
        NSLayoutAttribute layoutAttribute = NSLayoutAttributeWidth;
        [self.constraints enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLayoutConstraint *constraint = (NSLayoutConstraint *)obj;
            if((constraint.firstItem == self) && (constraint.firstAttribute == layoutAttribute)) {
                [self removeConstraint:constraint];
                constraint.constant = 1 / [UIScreen mainScreen].scale;
                [self addConstraint:constraint];
                *stop = YES;
            }
        }];
    }
}


- (BOOL)isVOnePx
{
    return self.vOnePx;
}


- (void)setVOnePx:(BOOL)vOnePx
{
    if(vOnePx) {
        NSLayoutAttribute layoutAttribute = NSLayoutAttributeHeight;
        [self.constraints enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLayoutConstraint *constraint = (NSLayoutConstraint *)obj;
            if((constraint.firstItem == self) && (constraint.firstAttribute == layoutAttribute)) {
                [self removeConstraint:constraint];
                constraint.constant = 1 / [UIScreen mainScreen].scale;
                [self addConstraint:constraint];
                *stop = YES;
            }
        }];
    }
}


@end
