//
//  FNMeTableController.m
//  finance
//
//  Created by yanmin on 14-9-7.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNMeTableController.h"
#import "FNSettingTableController.h"
@interface FNMeTableController ()

@end

@implementation FNMeTableController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"我的彩票";
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}


-(void)setting{
    [self.navigationController pushViewController:[[FNSettingTableController alloc] init] animated:YES];
}

@end
