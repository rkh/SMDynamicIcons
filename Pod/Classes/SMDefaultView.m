//
//  SMDefaultView.m
//  Pods
//
//  Created by seanmcneil on 1/30/16.
//
//

#import "SMDefaultView.h"

const NSInteger groupRectShortOffset = 3;
const NSInteger groupRectLongOffset = 6;

@interface SMDefaultView ()

@property (nonatomic, copy) UIColor *viewBackgroundColor;
@property (nonatomic, copy) UIColor *backgroundColor;
@property (nonatomic, copy) UIColor *strokeColor;

@end

@implementation SMDefaultView

- (instancetype)initWithFrame:(CGRect)frame view:(UIView *)view backgroundColor:(UIColor *)backgroundColor strokeColor:(UIColor *)strokeColor {
    self = [super initWithFrame:frame];
    if (self) {
        self.viewBackgroundColor = view.backgroundColor;
        self.backgroundColor = backgroundColor;
        self.strokeColor = strokeColor;
    }
    
    return self;
}

+ (CGRect)getGroupRect:(CGRect)frame {
    return CGRectMake(CGRectGetMinX(frame) + groupRectShortOffset,
                      CGRectGetMinY(frame) + groupRectShortOffset,
                      CGRectGetWidth(frame) - groupRectLongOffset,
                      CGRectGetHeight(frame) - groupRectLongOffset);
}

@end
