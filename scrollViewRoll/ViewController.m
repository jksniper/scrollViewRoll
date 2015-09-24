//
//  ViewController.m
//  scrollViewRoll
//
//  Created by 无密码 on 14-8-20.
//  Copyright (c) 2014年 hahatao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGPoint bottomOffset = CGPointMake(self.scrollView.contentOffset.x, self.scrollView.contentSize.height - self.scrollView.bounds.size.height);
    [self.scrollView setContentOffset:bottomOffset animated:NO];
    
    CGPoint newOffset = self.scrollView.contentOffset;
    newOffset.y = 0;
    [self.scrollView setContentOffset:newOffset animated:YES];
}

- (void)viewDidLoad
{
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 420)];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end