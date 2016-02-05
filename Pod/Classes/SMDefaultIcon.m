//
//  SMDefaultIcon.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMDefaultIcon.h"

@implementation SMDefaultIcon

+ (void)checkSize:(CGSize)size {
    NSAssert(!CGSizeEqualToSize(size, CGSizeZero), @"Must provide a valid size");
}

@end
