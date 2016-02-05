//
//  SMMinus.m
//  Pods
//
//  Created by seanmcneil on 2/3/16.
//
//

#import "SMMinus.h"

static const CGFloat SMPathLowValue = 0.2000f;
static const CGFloat SMPathHighValue = 0.8000f;

@implementation SMMinus

+ (UIImage *)minus:(CGSize)size {
    [super checkSize:size];
    
    return [SMMinus minus:size
          backgroundColor:[UIColor defaultCancelBackground]
              strokeColor:[UIColor defaultCancelStroke]];
}

+ (UIImage *)minus:(CGSize)size
   backgroundColor:(UIColor *)backgroundColor
       strokeColor:(UIColor *)strokeColor {
    [super checkSize:size];
    
    if (!backgroundColor) {
        backgroundColor = [UIColor defaultMinusBackground];
    }
    if (!strokeColor) {
        strokeColor = [UIColor defaultMinusStroke];
    }
    
    return [SMMinus drawMinus:size
              backgroundColor:backgroundColor
                  strokeColor:strokeColor];
}

+ (UIImage *)drawMinus:(CGSize)size
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
    
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
