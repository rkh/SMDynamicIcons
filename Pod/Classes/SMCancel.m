//
//  SMCancel.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMCancel.h"

static const CGFloat SMPathLowValue = 0.3000f;
static const CGFloat SMPathHighValue = 0.7000f;

@implementation SMCancel

+ (UIImage *)cancel:(CGSize)size {
    [super checkSize:size];
    
    return [SMCancel cancel:size
            backgroundColor:[UIColor defaultCancelBackground]
                strokeColor:[UIColor defaultCancelStroke]];
}

+ (UIImage *)cancel:(CGSize)size
    backgroundColor:(UIColor *)backgroundColor
        strokeColor:(UIColor *)strokeColor {
    [super checkSize:size];
    
    if (!backgroundColor) {
        backgroundColor = [UIColor defaultCancelBackground];
    }
    if (!strokeColor) {
        strokeColor = [UIColor defaultCancelStroke];
    }
    
    return [SMCancel drawCancel:size
                backgroundColor:backgroundColor
                    strokeColor:strokeColor];
}

+ (UIImage *)drawCancel:(CGSize)size
        backgroundColor:(UIColor *)backgroundColor
            strokeColor:(UIColor *)strokeColor {
    CGRect group = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    CGContextFillEllipseInRect(context, group);

    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + SMPathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathHighValue * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + SMPathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathLowValue * CGRectGetHeight(group))];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + SMPathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathLowValue * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + SMPathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + SMPathHighValue * CGRectGetHeight(group))];
    
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
