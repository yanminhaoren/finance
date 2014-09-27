//
//  FNShareController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNShareController.h"
#import "FNSettingItem.h"
#import "FNGroupItem.h"
@interface FNShareController ()

@end

@implementation FNShareController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

-(id)init{
    self=[super init];
    
    FNSettingItem *weiboItem=[FNSettingItem SettingItemWithImage:@"WeiboSina" title:@"微博分享" itemType:FNSettingItemArrow];
     FNSettingItem *smsItem=[FNSettingItem SettingItemWithImage:@"SmsShare" title:@"短信分享" itemType:FNSettingItemArrow];
     FNSettingItem *emailItem=[FNSettingItem SettingItemWithImage:@"MailShare" title:@"邮箱分享" itemType:FNSettingItemArrow];
    FNGroupItem *group=[[FNGroupItem alloc] init];
    group.items=@[weiboItem,smsItem,emailItem];
    [datas addObject:group];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

@end
