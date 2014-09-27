//
//  FNSettingTableController.m
//  finance
//
//  Created by yanmin on 14-9-7.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNSettingTableController.h"
#import "FNSettingItem.h"
#import "FNPushController.h"
#import "FNGroupItem.h"
#import "FNShareController.h"
#import "FNProductController.h"
@implementation FNSettingTableController


-(id)init{
    self=[super init];
    self.title=@"设置";
    [self addOneGroupData];
    [self addTwoGroupData];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)addOneGroupData{
    
    FNSettingItem *pushItem=[FNSettingItem SettingItemWithImage:@"MorePush" title:@"推送和提醒" itemType:FNSettingItemArrow];
    pushItem.showVc=[FNPushController class];
//    __weak FNSettingTableController *selfVc=self;
//    pushItem.operation=^(){
//        [selfVc.navigationController pushViewController:[[FNPushController alloc] init] animated:YES];
//    };
    FNSettingItem *shareItem=[FNSettingItem SettingItemWithImage:@"handShake" title:@"摇一摇机选" itemType:FNSettingItemSwitch];
    FNSettingItem *soundItem=[FNSettingItem SettingItemWithImage:@"sound_Effect" title:@"声音效果" itemType:FNSettingItemSwitch];
    FNGroupItem *group=[[FNGroupItem alloc] init];
    group.items=@[pushItem,shareItem,soundItem];
    [datas addObject:group];
}

-(void)addTwoGroupData{
    FNSettingItem *updateItem=[FNSettingItem SettingItemWithImage:@"MoreUpdate" title:@"版本更新"itemType:FNSettingItemArrow];
    updateItem.operation=^(){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"版本更新" message:@"是否更新最新版本" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    };
    FNSettingItem *helpItem=[FNSettingItem SettingItemWithImage:@"MoreHelp" title:@"帮助" itemType:FNSettingItemArrow];
    FNSettingItem *showItem=[FNSettingItem SettingItemWithImage:@"MoreShare" title:@"分享" itemType:FNSettingItemArrow];
    showItem.showVc=[FNShareController class];
    FNSettingItem *messageItem=[FNSettingItem SettingItemWithImage:@"MoreMessage" title:@"查看消息" itemType:FNSettingItemArrow];
    FNSettingItem *productItem=[FNSettingItem SettingItemWithImage:@"MoreNetease" title:@"产品推荐" itemType:FNSettingItemArrow];
    productItem.showVc=[FNProductController class];
    FNSettingItem *aboutItem=[FNSettingItem SettingItemWithImage:@"MoreAbout" title:@"关于" itemType:FNSettingItemArrow];
    FNGroupItem *group=[[FNGroupItem alloc] init];
    group.items=@[updateItem,helpItem,showItem,messageItem,productItem,aboutItem];
    [datas addObject:group];
}
-(void)dealloc{
    NSLog(@"dealloc FNSettingTableController");
}
@end
