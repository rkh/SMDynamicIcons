//
//  SMCancel.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@interface SMCancel : SMDefaultIcon

+ (UIImage *)cancel:(CGRect)frame;

+ (UIImage *)cancel:(CGRect)frame
    backgroundColor:(UIColor *)backgroundColor
        strokeColor:(UIColor *)strokeColor;

@end
