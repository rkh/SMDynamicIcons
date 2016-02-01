//
//  SMDefaultIcon.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

const NSInteger groupRectShortOffset = -3;
const NSInteger groupRectLongOffset = -6;

@implementation SMDefaultIcon

+ (CGRect)getGroupRect:(CGRect)frame {
    return CGRectMake(CGRectGetMinX(frame) + groupRectShortOffset,
                      CGRectGetMinY(frame) + groupRectShortOffset,
                      CGRectGetWidth(frame) - groupRectLongOffset,
                      CGRectGetHeight(frame) - groupRectLongOffset);
}

@end
