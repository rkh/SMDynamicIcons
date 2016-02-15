//
//  SMDefaultIcon.h
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import <Foundation/Foundation.h>
#import "UIColor+DefaultColors.h"

static const CGFloat SMStrokeWidth = 0.15f;

@interface SMDefaultIcon : NSObject

/**
 *  Prevents user from creating an object based on this class
 *
 *  @return nil
 */
- (instancetype)init NS_UNAVAILABLE;

+ (void)checkSize:(CGSize)size;

@end
