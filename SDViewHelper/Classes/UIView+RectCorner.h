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
- (void)dx_cornerTop;

//! Bottom corner
- (void)dx_cornerBottom;

//! Left corner
- (void)dx_cornerLeft;

//! Right corner
- (void)dx_cornerRight;

//! All corner
- (void)dx_cornerAll;

//! Remove corner if have
- (void)dx_cornerNone;

@end
