//
//  FNPushController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNPushController.h"
#import "FNSettingItem.h"
#import "FNGroupItem.h"
#import "FNOpenAwardController.h"
@interface FNPushController ()

@end

@implementation FNPushController



-(id)init{
    self=[super init];
    self.title=@"推送和提醒";
    FNSettingItem *pushItem=[FNSettingItem SettingItemWithTitle:@"开奖号码推送" itemType:FNSettingItemArrow];
    pushItem.showVc=[FNOpenAwardController class];
    FNSettingItem *animamtionItem=[FNSettingItem SettingItemWithTitle:@"中奖动画" itemType:FNSettingItemArrow];
    FNSettingItem *scorenItem=[FNSettingItem SettingItemWithTitle:@"比分直播提醒" itemType:FNSettingItemArrow];
    FNSettingItem *timeItem=[FNSettingItem SettingItemWithTitle:@"购买定时提醒" itemType:FNSettingItemArrow];
    FNGroupItem *group=[[FNGroupItem alloc] init];
    group.items=@[pushItem,animamtionItem,scorenItem,timeItem];
    [datas addObject:group];
    return  self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)dealloc{
    NSLog(@"dealloc FNPushController");
}

@end
