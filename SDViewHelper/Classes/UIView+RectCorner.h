//
//  UIView+RectCorner.h
//  SDViewHelper
//
//  Created by shendong on 2017/11/23.
//

#import <UIKit/UIKit.h>
//! Corner set, reset when the size is changed.
@interface UIView (RectCorner)

//! Top corner
- (void)sd_cornerTop;

//! Bottom corner
- (void)sd_cornerBottom;

//! Left corner
- (void)sd_cornerLeft;

//! Right corner
- (void)sd_cornerRight;

//! All corner
- (void)sd_cornerAll;

//! Remove corner if have
- (void)sd_cornerNone;

@end
