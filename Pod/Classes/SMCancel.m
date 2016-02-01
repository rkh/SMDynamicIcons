//
//  SMCancel.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMCancel.h"

const CGFloat pathLowValue = 0.3000f;
const CGFloat pathHighValue = 0.7000f;

@implementation SMCancel

+ (UIImage *)cancel:(CGSize)size {
    return [SMCancel checkmark:size
               backgroundColor:[UIColor defaultCancelBackground]
                   strokeColor:[UIColor defaultCancelStroke]];
}

+ (UIImage *)cancel:(CGSize)size
    backgroundColor:(UIColor *)backgroundColor
        strokeColor:(UIColor *)strokeColor {
    return [SMCancel drawCancel:size
                backgroundColor:backgroundColor
                    strokeColor:strokeColor];
}

+ (UIImage *)drawCancel:(CGSize)size
        backgroundColor:(UIColor *)backgroundColor
            strokeColor:(UIColor *)strokeColor {
    CGRect contextRect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, backgroundColor);
    CGContextFillEllipseInRect(context, contextRect);
    
    CGRect group = [SMCancel getGroupRect:contextRect];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + pathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathHighValue * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + pathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathLowValue * CGRectGetHeight(group))];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + pathLowValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathLowValue * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + pathHighValue * CGRectGetWidth(group), CGRectGetMinY(group) + pathHighValue * CGRectGetHeight(group))];
    
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
