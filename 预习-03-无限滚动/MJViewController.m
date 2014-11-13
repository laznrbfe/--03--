//
//  MJViewController.m
//  预习-03-无限滚动
//
//  Created by MJ Lee on 14-5-30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJViewController.h"
#import "MJNews.h"
#import "MJExtension.h"
#import "MJNewsView.h"
#import "UIView+MJ.h"

@interface MJViewController ()
@property (strong, nonatomic) NSArray   *newses;
@end

@implementation MJViewController

- (NSArray *)newses
{
    if (!_newses) {
        self.newses = [MJNews objectArrayWithFilename:@"newses.plist"];
    }
    return _newses;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MJNewsView *newsView = [MJNewsView newsView];
    newsView.x = 10;
    newsView.y = 40;
    newsView.newses = self.newses;
    [self.view addSubview:newsView];
}


@end
