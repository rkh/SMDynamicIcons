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
 *  Provides CGRect used to defined field for strokes
 *
 *  @param frame CGRect that defines stroke field
 *
 *  @return CGRect that bounds strokes
 */
+ (CGRect)getGroupRect:(CGRect)frame;

@end
