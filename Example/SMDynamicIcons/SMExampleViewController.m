//
//  SMExampleViewController.m
//  SMDynamicIcons
//
//  Created by seanmcneil on 2/4/16.
//  Copyright © 2016 Sean McNeil. All rights reserved.
//

#import "SMExampleViewController.h"

@import SMDynamicIcons;

@interface SMExampleViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView150;
@property (weak, nonatomic) IBOutlet UIImageView *imageView100;
@property (weak, nonatomic) IBOutlet UIImageView *imageView50;
@property (weak, nonatomic) IBOutlet UIImageView *imageView25;

@end

@implementation SMExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewTitle];
    [self drawDefaultCheckmark];
}

- (void)viewTitle {
    switch (self.iconOption) {
        case SMIconOptionCancel: {
            self.title = NSLocalizedString(@"Cancel Icon", @"For SMCancel");
            break;
        }
        case SMIconOptionCheckmark: {
            self.title = NSLocalizedString(@"Checkmark Icon", @"For SMCheckmark");
            break;
        }
        case SMIconOptionMinus: {
            self.title = NSLocalizedString(@"Minus Icon", @"For SMMinus");
            break;
        }
        case SMIconOptionPlus: {
            self.title = NSLocalizedString(@"Plus Icon", @"For SMPlus");
            break;
        }
    }
}

- (void)drawDefaultCheckmark {
    for (UIImageView *imageView in self.containerView.subviews) {
        if ([imageView isKindOfClass:[UIImageView class]]) {
            switch (self.iconOption) {
                case SMIconOptionCancel: {
                    imageView.image = [self defaultCancelImage:imageView];
                    break;
                }
                case SMIconOptionCheckmark: {
                    imageView.image = [self defaultCheckmarkImage:imageView];
                    break;
                }
                case SMIconOptionMinus: {
                    imageView.image = [self defaultMinusImage:imageView];
                    break;
                }
                case SMIconOptionPlus: {
                    imageView.image = [self defaultPlusImage:imageView];
                    break;
                }
            }
        }
    }
}

- (UIImage *)defaultCancelImage:(UIImageView *)imageView {
    return [SMCancel cancel:[self imageSize:imageView]];
}

- (UIImage *)defaultCheckmarkImage:(UIImageView *)imageView {
    return [SMCheckMark checkmark:[self imageSize:imageView]];
}

- (UIImage *)defaultMinusImage:(UIImageView *)imageView {
    return [SMMinus minus:[self imageSize:imageView]];
}

- (UIImage *)defaultPlusImage:(UIImageView *)imageView {
    return [SMPlus plus:[self imageSize:imageView]];
}

- (CGSize)imageSize:(UIImageView *)imageView {
    return CGSizeMake(imageView.frame.size.width,
                      imageView.frame.size.height);
}

@end
