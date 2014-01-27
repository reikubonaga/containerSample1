//
//  WTDTableViewController.m
//  containerSample
//
//  Created by rei kubonaga on 2014/01/27.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "WTDTableViewController.h"

static CGFloat const kViewControllerCellHeight = 1000;

@interface WTDTableViewController ()

@property (nonatomic, assign, getter = isViewControllerCellHidden) BOOL viewControllerCellHidden;
@property (nonatomic, weak) IBOutlet UITableViewCell *viewControllerCell;

@end

@implementation WTDTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    fprintf(stderr, "WTDTableViewController viewDidLoad\n");

    self.viewControllerCellHidden = NO;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    fprintf(stderr, "WTDTableViewController viewWillLayoutSubviews\n");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    fprintf(stderr, "WTDTableViewController viewDidLayoutSubviews\n");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    fprintf(stderr, "WTDTableViewController viewWillAppear\n");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    fprintf(stderr, "WTDTableViewController viewDidAppear\n");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    fprintf(stderr, "WTDTableViewController viewWillDisAppear\n");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

    fprintf(stderr, "WTDTableViewController viewDidDisappear\n");
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];

    fprintf(stderr, "WTDTableViewController prepareForSegue\n");
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
