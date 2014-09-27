//
//  FNTabBarController.m
//  finance
//
//  Created by yanmin on 14-8-31.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNTabBarController.h"
#import "FNTabBarItem.h"
@interface FNTabBarController ()<FNTabBarDelegate>

@end

@implementation FNTabBarController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    //删除tabview
    [self.tabBar removeFromSuperview];
    
    FNTabBarItem *tabBar=[[FNTabBarItem alloc] init];
    tabBar.frame=self.tabBar.frame;
    tabBar.delegate=self;
    [self.view addSubview:tabBar];
    for (int i=1; i<=5; i++) {
        [tabBar addItemWithIcon:[NSString stringWithFormat:@"TabBar%i",i] selectIcon:[NSString stringWithFormat:@"TabBar%iSel",i]];
    }
}

-(void)didSelectFrom:(NSInteger)fromId to:(NSInteger)toId{
    self.selectedIndex=toId;
    UIViewController *viewVc=self.childViewControllers[toId];
    UINavigationItem *item=self.navigationItem;
    item.title=viewVc.navigationItem.title;
    item.rightBarButtonItem=viewVc.navigationItem.rightBarButtonItem;
    item.rightBarButtonItems=viewVc.navigationItem.rightBarButtonItems;
    item.leftBarButtonItem=viewVc.navigationItem.leftBarButtonItem;
    item.leftBarButtonItems=viewVc.navigationItem.leftBarButtonItems;
    item.titleView=viewVc.navigationItem.titleView;
}


@end
