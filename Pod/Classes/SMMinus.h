//
//  SMMinus.h
//  Pods
//
//  Created by seanmcneil on 2/3/16.
//
//

#import "SMDefaultIcon.h"

@interface SMMinus : SMDefaultIcon

/**
 *  Generate the default minus icon with a white line on red background
 *
 *  @param size CGSize for the icon
 *
 *  @return A minus image
 */
+ (UIImage *)minus:(CGSize)size;

/**
 *  Generate a custom minus icon with user defined colors
 *
 *  @param size            CGSize for the icon
 *  @param backgroundColor UIColor for background of icon
 *  @param strokeColor     UIColor for the strokes of the icon
 *
 *  @return A minus image using user defined color scheme
 */
+ (UIImage *)minus:(CGSize)size
   backgroundColor:(UIColor *)backgroundColor
       strokeColor:(UIColor *)strokeColor;

@end
