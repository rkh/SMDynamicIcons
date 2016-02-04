//
//  SMCheckMark.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMCheckMark.h"

static const CGFloat SMPathInitialX = 0.250f;
static const CGFloat SMPathInitialY = 0.550f;
static const CGFloat SMPathMidpointX = 0.400f;
static const CGFloat SMPathMidpointY = 0.680f;
static const CGFloat SMPathEndpointX = 0.750f;
static const CGFloat SMPathEndpointY = 0.300f;

@implementation SMCheckMark

+ (UIImage *)checkmark:(CGSize)size {
    return [SMCheckMark checkmark:size
                  backgroundColor:[UIColor defaultCheckmarkBackground]
                      strokeColor:[UIColor defaultCheckmarkStroke]];
}

+ (UIImage *)checkmark:(CGSize)size
       backgroundColor:(UIColor *)backgroundColor
           strokeColor:(UIColor *)strokeColor {
    NSAssert(CGSizeEqualToSize(size, CGSizeZero), @"Must provide a valid size");
    if (!backgroundColor) {
        backgroundColor = [UIColor defaultCheckmarkBackground];
    }
    if (!strokeColor) {
        strokeColor = [UIColor defaultCheckmarkStroke];
    }
    
    return [SMCheckMark drawCheckmark:size
                      backgroundColor:backgroundColor
                          strokeColor:strokeColor];
}

+ (UIImage *)drawCheckmark:(CGSize)size
           backgroundColor:(UIColor *)backgroundColor
               strokeColor:(UIColor *)strokeColor {
    CGRect group = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    CGContextFillEllipseInRect(context, group);

    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + SMPathInitialX * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathInitialY * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + SMPathMidpointX * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathMidpointY * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + SMPathEndpointX * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathEndpointY * CGRectGetHeight(group))];
    bezierPath.lineCapStyle = kCGLineCapSquare;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
