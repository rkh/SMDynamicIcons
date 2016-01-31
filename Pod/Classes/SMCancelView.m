//
//  SMCancelView.m
//  Pods
//
//  Created by seanmcneil on 1/30/16.
//
//

#import "SMCancelView.h"

const CGFloat pathLowValue = 0.3000f;
const CGFloat pathHighValue = 0.7000f;

@interface SMCancelView ()

@property (nonatomic, copy) UIColor *viewBackgroundColor;
@property (nonatomic, copy) UIColor *backgroundColor;
@property (nonatomic, copy) UIColor *strokeColor;

@end

@implementation SMCancelView

- (instancetype)initWithFrame:(CGRect)frame view:(UIView *)view {
    self = [super initWithFrame:frame];
    if (self) {
        self.viewBackgroundColor = view.backgroundColor;
        self.backgroundColor = [UIColor colorWithRed: 178.0f/255.0f green: 34.0f/255.0f blue: 34.0f/255.0f alpha: 1.0f];
        self.strokeColor = [UIColor whiteColor];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame view:(UIView *)view backgroundColor:(UIColor *)backgroundColor strokeColor:(UIColor *)strokeColor {
    self = [super initWithFrame:frame];
    if (self) {
        self.viewBackgroundColor = view.backgroundColor;
        self.backgroundColor = backgroundColor;
        self.strokeColor = strokeColor;
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
    
    CGRect frame = self.bounds;
    CGRect group = CGRectMake(CGRectGetMinX(frame) + 3, CGRectGetMinY(frame) + 3, CGRectGetWidth(frame) - 6, CGRectGetHeight(frame) - 6);
    
    {
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
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + pathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathHighValue * CGRectGetHeight(group))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + pathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathLowValue * CGRectGetHeight(group))];
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + pathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathLowValue * CGRectGetHeight(group))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + pathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathHighValue * CGRectGetHeight(group))];
        
        bezierPath.lineCapStyle = kCGLineCapRound;
        
        [self.strokeColor setStroke];
        bezierPath.lineWidth = CGRectGetWidth(group) * 0.15;
        [bezierPath stroke];
    }
}


@end
