//
//  FNOpenAwardController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNOpenAwardController.h"
#import "FNSettingItem.h"
#import "FNGroupItem.h"

@interface FNOpenAwardController ()

@end

@implementation FNOpenAwardController

-(id)init{
    self=[super init];
    self.title=@"打开推送设置";
    FNSettingItem *dItem=[FNSettingItem SettingItemWithTitle:@"双色球" itemType:FNSettingItemSwitch];
    FNSettingItem *mItem=[FNSettingItem SettingItemWithTitle:@"大乐透" itemType:FNSettingItemSwitch];
    FNGroupItem *group=[[FNGroupItem alloc] init];
    group.header=@"打开设置即可在开奖后立即收到推送消息，获知开奖号码";
    group.items=@[dItem,mItem];
    [datas addObject:group];
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
