//
//  SMCheckMark.m
//  Pods
//
//  Created by seanmcneil on 1/31/16.
//
//

#import "SMCheckMark.h"

@implementation SMCheckMark

+ (UIImage *)checkmark:(CGRect)frame {
    return [SMCheckMark checkmark:frame
                  backgroundColor:[UIColor defaultCheckmarkBackground]
                      strokeColor:[UIColor defaultCheckmarkStroke]];
}

+ (UIImage *)checkmark:(CGRect)frame
       backgroundColor:(UIColor *)backgroundColor
           strokeColor:(UIColor *)strokeColor {
    return [SMCheckMark drawCheckmark:frame
                      backgroundColor:backgroundColor
                          strokeColor:strokeColor];
}

+ (UIImage *)drawCheckmark:(CGRect)frame
           backgroundColor:(UIColor *)backgroundColor
               strokeColor:(UIColor *)strokeColor {
    CGSize size = CGSizeMake(frame.size.width, frame.size.height);
    CGRect contextRect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, backgroundColor);
    CGContextFillEllipseInRect(context, contextRect);
    
    CGRect group = [SMCheckMark getGroupRect:contextRect];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.250 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.55 * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.4 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.68 * CGRectGetHeight(group))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(group) + 0.75000 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.3 * CGRectGetHeight(group))];
    bezierPath.lineCapStyle = kCGLineCapSquare;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = CGRectGetWidth(group) * SMStrokeWidth;
    [bezierPath stroke];
    
    UIImage *iconImage =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return iconImage;
}

@end
