//
//  SMPlus.h
//  Pods
//
//  Created by seanmcneil on 2/3/16.
//
//

#import "SMDefaultIcon.h"

@interface SMPlus : SMDefaultIcon

/**
 *  Generate the default cancel icon with a white line on red background
 *
 *  @param size CGSize for the icon
 *
 *  @return A cancel image
 */
+ (UIImage *)plus:(CGSize)size;

/**
 *  Generate a custom cancel icon with user defined colors
 *
 *  @param size            CGSize for the icon
 *  @param backgroundColor UIColor for background of icon
 *  @param strokeColor     UIColor for the strokes of the icon
 *
 *  @return A cancel image using user defined color scheme
 */
+ (UIImage *)plus:(CGSize)size
  backgroundColor:(UIColor *)backgroundColor
      strokeColor:(UIColor *)strokeColor;

@end
