//
//  FNSettingItem.m
//  finance
//
//  Created by yanmin on 14-9-7.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNSettingItem.h"

@implementation FNSettingItem


+(id)SettingItemWithImage:(NSString *)image title:(NSString *)title itemType:(FNSettingItemType)itemType{
    
    FNSettingItem *item=[[self alloc] init];
    item.title=title;
    item.image=image;
    item.itemType=itemType;
    return item;
}

+(id)SettingItemWithTitle:(NSString *)title itemType:(FNSettingItemType)itemType{
   return [self SettingItemWithImage:nil title:title itemType:itemType];
}

@end
