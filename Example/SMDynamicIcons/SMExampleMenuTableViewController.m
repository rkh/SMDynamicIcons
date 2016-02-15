//
//  SMExampleMenuTableViewController.m
//  SMDynamicIcons
//
//  Created by seanmcneil on 2/4/16.
//  Copyright © 2016 Sean McNeil. All rights reserved.
//

#import "SMExampleMenuTableViewController.h"
#import "SMExampleViewController.h"

@import SMDynamicIcons;

NSString *SMTableCellIdentifier = @"MenuCell";
NSString *SMSegueIdentifier = @"showIcons";

@interface SMExampleMenuTableViewController ()

@property (nonatomic, strong) NSArray *menuOptions;

@end

@implementation SMExampleMenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Menu", @"Main menu");
    self.menuOptions = [[NSArray alloc] initWithObjects:
                        NSLocalizedString(@"Cancel Icon", @"For SMCancel"),
                        NSLocalizedString(@"Checkmark Icon", @"For SMCheckmark"),
                        NSLocalizedString(@"Minus Icon", @"For SMMinus"),
                        NSLocalizedString(@"Plus Icon", @"For SMPlus"), nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.menuOptions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SMTableCellIdentifier
                                                            forIndexPath:indexPath];
    cell.textLabel.text = [self.menuOptions objectAtIndex:indexPath.row];
    //cell.imageView.image = [SMPlus plus:CGSizeMake(cell.imageView.frame.size.width, cell.imageView.frame.size.height)];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 5;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:SMSegueIdentifier]) {
        SMExampleViewController *destination = segue.destinationViewController;
        destination.iconOption = [self.tableView indexPathForSelectedRow].row;
    }
}


//- (UIImage *)cellImage:(NSInteger)row {
//    switch ([SMDefaultIcon ]) {
//        case <#constant#>:
//            <#statements#>
//            break;
//            
//        default:
//            break;
//    }
//}

@end
