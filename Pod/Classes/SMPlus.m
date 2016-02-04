//
//  SMPlus.m
//  Pods
//
//  Created by seanmcneil on 2/3/16.
//
//

#import "SMPlus.h"

static const CGFloat SMPathLowValue = 0.3000f;
static const CGFloat SMPathHighValue = 0.7000f;

@implementation SMPlus

+ (UIImage *)plus:(CGSize)size {
    return [SMPlus plus:size
        backgroundColor:[UIColor defaultCancelBackground]
            strokeColor:[UIColor defaultCancelStroke]];
}

+ (UIImage *)plus:(CGSize)size
  backgroundColor:(UIColor *)backgroundColor
      strokeColor:(UIColor *)strokeColor {
    return [SMPlus drawPlus:size
            backgroundColor:backgroundColor
                strokeColor:strokeColor];
}

+ (UIImage *)drawPlus:(CGSize)size
      backgroundColor:(UIColor *)backgroundColor
          strokeColor:(UIColor *)strokeColor {
    CGRect group = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    CGContextFillEllipseInRect(context, group);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + SMPathLowValue * CGRectGetWidth(group), CGRectGetMidY(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + SMPathHighValue * CGRectGetWidth(group), CGRectGetMidY(group))];
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
