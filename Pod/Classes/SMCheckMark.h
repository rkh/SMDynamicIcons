//
//  SMCheckMark.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@interface SMCheckMark : SMDefaultIcon

/**
 *  Generate the default checkmark icon with a white line on green background
 *
 *  @param size CGSize for the icon
 *
 *  @return A checkmark image
 */
+ (UIImage *)checkmark:(CGSize)size;

/**
 *  Generate a custom checkmark icon with user defined colors
 *
 *  @param size            CGSize for the icon
 *  @param backgroundColor UIColor for background of icon
 *  @param strokeColor     UIColor for the strokes of the icon
 *
 *  @return A checkmark image using user defined color scheme
 */
+ (UIImage *)checkmark:(CGSize)size
       backgroundColor:(UIColor *)backgroundColor
           strokeColor:(UIColor *)strokeColor;

@end
