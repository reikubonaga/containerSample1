//
//  WTDTableViewController.m
//  containerSample
//
//  Created by rei kubonaga on 2014/01/27.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "WTDTableViewController.h"
#import "WTDContainerViewController.h"

static CGFloat const kViewControllerCellHeight = 300;
static NSString * const kPushContainerViewController = @"PushContainerViewController";

@interface WTDTableViewController ()

@property (nonatomic, assign, getter = isViewControllerCellHidden) BOOL viewControllerCellHidden;
@property (nonatomic, weak) IBOutlet UITableViewCell *viewControllerCell;

@property (nonatomic, strong) WTDContainerViewController *containerViewController;

@end

@implementation WTDTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    fprintf(stderr, "WTDTableViewController viewDidLoad\n");

    self.viewControllerCellHidden = YES;
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

    if ([[segue identifier] isEqualToString:kPushContainerViewController]) {
        self.containerViewController = [segue destinationViewController];
        self.containerViewController.view.hidden = YES;
    }

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
    fprintf(stderr, "\n\n\n");

    self.viewControllerCellHidden = !self.viewControllerCellHidden;

    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    fprintf(stderr, "WTDTableViewController heightForRowAtIndexPath\n");

    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];

    if (cell == self.viewControllerCell && !self.isViewControllerCellHidden) {
        self.containerViewController.view.hidden = NO;
        return kViewControllerCellHeight;
    } else {
        self.containerViewController.view.hidden = YES;
    }

    return 0;
}

@end
