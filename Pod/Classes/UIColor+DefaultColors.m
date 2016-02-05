//
//  UIColor+DefaultColors.m
//  Pods
//
//  Created by seanmcneil on 1/30/16.
//
//

#import "UIColor+DefaultColors.h"

@implementation UIColor (DefaultColors)

+ (UIColor *)defaultCancelBackground {
    return [UIColor colorWithRed: 178.0f/255.0f green: 34.0f/255.0f blue: 34.0f/255.0f alpha: 1.0f];
}

+ (UIColor *)defaultCancelStroke {
    return [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
}

+ (UIColor *)defaultCheckmarkBackground {
    return [UIColor colorWithRed: 56.0f/255.0f green: 146.0f/255.0f blue: 46.0f/255.0f alpha: 1.0f];
}

+ (UIColor *)defaultCheckmarkStroke {
    return [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
}

+ (UIColor *)defaultPlusBackground {
    return [UIColor colorWithRed: 93.0f/255.0f green: 127.0f/255.0f blue: 249.0f/255.0f alpha: 1.0f];
}

+ (UIColor *)defaultPlusStroke {
    return [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
}

+ (UIColor *)defaultMinusBackground {
    return [UIColor colorWithRed: 178.0f/255.0f green: 34.0f/255.0f blue: 34.0f/255.0f alpha: 1.0f];
}

+ (UIColor *)defaultMinusStroke {
    return [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
}

@end
