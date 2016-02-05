//
//  SMViewController.m
//  SMDynamicIcons
//
//  Created by Sean McNeil on 01/30/2016.
//  Copyright (c) 2016 Sean McNeil. All rights reserved.
//

#import "SMViewController.h"

@import SMDynamicIcons;

@interface SMViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *defaultCheckmarkImageView;

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self drawDefaultCheckmark];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)drawDefaultCheckmark {
    self.defaultCheckmarkImageView.image = [self defaultCheckmarkImage];
}

- (UIImage *)defaultCheckmarkImage {
    return [SMPlus plus:[self imageSize]];
}

- (CGSize)imageSize {
    return CGSizeMake(self.defaultCheckmarkImageView.frame.size.width,
                      self.defaultCheckmarkImageView.frame.size.height);
}

@end
