//
//  SMCheckMark.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@interface SMCheckMark : SMDefaultIcon

+ (UIImage *)checkmark:(CGRect)frame;

+ (UIImage *)checkmark:(CGRect)frame
       backgroundColor:(UIColor *)backgroundColor
           strokeColor:(UIColor *)strokeColor;

@end
