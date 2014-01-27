//
//  WTDContainerViewController.m
//  containerSample
//
//  Created by rei kubonaga on 2014/01/27.
//  Copyright (c) 2014年 rei kubonaga. All rights reserved.
//

#import "WTDContainerViewController.h"

@interface WTDContainerViewController ()

@end

@implementation WTDContainerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    fprintf(stderr, "WTDContainerViewController viewDidLoad\n");
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    fprintf(stderr, "WTDContainerViewController viewWillLayoutSubviews\n");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    fprintf(stderr, "WTDContainerViewController viewDidLayoutSubviews\n");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    if (!self.view.hidden) {
        [self.textField becomeFirstResponder];
    } else {
        [self.textField resignFirstResponder];
    }

    fprintf(stderr, "WTDContainerViewController viewWillAppear\n");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    fprintf(stderr, "WTDContainerViewController viewDidAppear\n");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    fprintf(stderr, "WTDContainerViewController viewWillDisAppear\n");
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];

    fprintf(stderr, "WTDContainerViewController viewDidDisappear\n");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
