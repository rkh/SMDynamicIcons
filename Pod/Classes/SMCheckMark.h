//
//  SMCheckMark.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@interface SMCheckMark : SMDefaultIcon

+ (UIImage *)checkmark:(CGSize)size;

+ (UIImage *)checkmark:(CGSize)size
       backgroundColor:(UIColor *)backgroundColor
           strokeColor:(UIColor *)strokeColor;

@end
