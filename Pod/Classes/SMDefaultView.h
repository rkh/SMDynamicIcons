//
//  SMDefaultView.h
//  Pods
//
//  Created by seanmcneil on 1/30/16.
//
//

#import <UIKit/UIKit.h>
#import "UIColor+DefaultColors.h"

@interface SMDefaultView : UIView

- (instancetype)initWithFrame:(CGRect)frame
                         view:(UIView *)view
              backgroundColor:(UIColor *)backgroundColor
                  strokeColor:(UIColor *)strokeColor;

+ (CGRect)getGroupRect:(CGRect)frame;

@end
