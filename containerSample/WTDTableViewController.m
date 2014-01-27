//
//  WTDTableViewController.m
//  containerSample
//
//  Created by rei kubonaga on 2014/01/27.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "WTDTableViewController.h"

static CGFloat const kViewControllerCellHeight = 300;

@interface WTDTableViewController ()

@property (nonatomic, assign, getter = isViewControllerCellHidden) BOOL viewControllerCellHidden;
@property (nonatomic, weak) IBOutlet UITableViewCell *viewControllerCell;

@end

@implementation WTDTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.viewControllerCellHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action
- (IBAction)switchViewControllerCell:(id)sender
{
    self.viewControllerCellHidden = !self.viewControllerCellHidden;

    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];

    if (cell == self.viewControllerCell && !self.isViewControllerCellHidden) {
        return kViewControllerCellHeight;
    }

    return 0;
}

@end
