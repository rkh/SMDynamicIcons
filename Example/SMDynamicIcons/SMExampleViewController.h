//
//  SMExampleViewController.h
//  SMDynamicIcons
//
//  Created by seanmcneil on 2/4/16.
//  Copyright © 2016 Sean McNeil. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SMIconOption) {
    SMIconOptionCancel,
    SMIconOptionCheckmark,
    SMIconOptionMinus,
    SMIconOptionPlus,
};

@interface SMExampleViewController : UIViewController

@property (nonatomic, assign) SMIconOption iconOption;

@end
