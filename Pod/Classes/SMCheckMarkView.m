//
//  SMCheckMarkView.m
//  Pods
//
//  Created by seanmcneil on 1/30/16.
//
//

#import "SMCheckMarkView.h"

@interface SMCheckMarkView ()

@property (nonatomic, copy) UIColor *viewBackgroundColor;
@property (nonatomic, copy) UIColor *backgroundColor;
@property (nonatomic, copy) UIColor *strokeColor;

@end

@implementation SMCheckMarkView

- (instancetype)initWithFrame:(CGRect)frame view:(UIView *)view {
    self = [super initWithFrame:frame];
    if (self) {
        self.viewBackgroundColor = view.backgroundColor;
        self.backgroundColor = [UIColor defaultCheckmarkBackground];
        self.strokeColor = [UIColor defaultCheckmarkStroke];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, self.viewBackgroundColor.CGColor);
    CGContextFillRect(context, self.bounds);
    
    UIColor *shadow = [UIColor blackColor];
    CGSize shadowOffset = CGSizeMake(0.1, -0.1);
    CGFloat shadowBlurRadius = 0.5;
    
    CGRect group = [SMCheckMarkView getGroupRect:self.bounds];
    //{
        UIBezierPath *checkedOvalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(group) + floor(CGRectGetWidth(group) * 0.00000 + 0.5),
                                                                                           CGRectGetMinY(group) + floor(CGRectGetHeight(group) * 0.00000 + 0.5),
                                                                                           floor(CGRectGetWidth(group) * 1.00000 + 0.5) - floor(CGRectGetWidth(group) * 0.00000 + 0.5),
                                                                                           floor(CGRectGetHeight(group) * 1.00000 + 0.5) - floor(CGRectGetHeight(group) * 0.00000 + 0.5))];
        CGContextSaveGState(context);
        CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, shadow.CGColor);
        [self.backgroundColor setFill];
        [checkedOvalPath fill];
        CGContextRestoreGState(context);
        
        UIBezierPath *bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.27083 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.54167 * CGRectGetHeight(group))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.41667 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.68750 * CGRectGetHeight(group))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.75000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.35417 * CGRectGetHeight(group))];
        bezierPath.lineCapStyle = kCGLineCapSquare;
        
        [self.strokeColor setStroke];
        bezierPath.lineWidth = CGRectGetWidth(group) * 0.10;
        [bezierPath stroke];
    //}
}

@end
