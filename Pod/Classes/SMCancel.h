//
//  SMCancel.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@interface SMCancel : SMDefaultIcon

/**
 *  Returns a UIImage icon for cancel with default colors of white on red
 *
 *  @param frame CGRect providing 
 *
 *  @return <#return value description#>
 */
+ (UIImage *)cancel:(CGSize)size;

+ (UIImage *)cancel:(CGSize)size
    backgroundColor:(UIColor *)backgroundColor
        strokeColor:(UIColor *)strokeColor;

@end
