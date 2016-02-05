//
//  SMPlus.m
//  Pods
//
//  Created by seanmcneil on 2/3/16.
//
//

#import "SMPlus.h"

static const CGFloat SMPathLowValue = 0.2000f;
static const CGFloat SMPathHighValue = 0.8000f;

@implementation SMPlus

+ (UIImage *)plus:(CGSize)size {
    [super checkSize:size];
    
    return [SMPlus plus:size
        backgroundColor:[UIColor defaultPlusBackground]
            strokeColor:[UIColor defaultPlusStroke]];
}

+ (UIImage *)plus:(CGSize)size
  backgroundColor:(UIColor *)backgroundColor
      strokeColor:(UIColor *)strokeColor {
    [super checkSize:size];
    
    if (!backgroundColor) {
        backgroundColor = [UIColor defaultPlusBackground];
    }
    if (!strokeColor) {
        strokeColor = [UIColor defaultPlusStroke];
    }
    
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
    [bezierPath moveToPoint: CGPointMake(CGRectGetMidX(group), CGRectGetMinY(group) + SMPathLowValue * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMidX(group), CGRectGetMinY(group) + SMPathHighValue * CGRectGetHeight(group))];
    
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
