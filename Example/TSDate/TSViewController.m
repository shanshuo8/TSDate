//
//  TSViewController.m
//  TSDate
//
//  Created by 1447107681@qq.com on 08/07/2021.
//  Copyright (c) 2021 1447107681@qq.com. All rights reserved.
//

#import "TSViewController.h"
#import <TSScheduler.h>
#import <TSScheduler+Date.h>
@interface TSViewController ()

@end

@implementation TSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", @([TSScheduler isTodayOfDate:[NSDate date]]));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
