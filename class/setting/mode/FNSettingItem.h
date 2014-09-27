//
//  FNSettingItem.h
//  finance
//
//  Created by yanmin on 14-9-7.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    FNSettingItemNone,
    FNSettingItemArrow,
    FNSettingItemSwitch
    
}FNSettingItemType;

@interface FNSettingItem : NSObject


@property (nonatomic,copy) NSString *image;
@property (nonatomic,copy) NSString *title;
@property(nonatomic,assign) FNSettingItemType itemType;
@property(nonatomic,copy) void (^operation)();
@property (nonatomic,copy) Class showVc;

+(id)SettingItemWithImage:(NSString *)image title:(NSString *)title itemType:(FNSettingItemType)itemType;
+(id)SettingItemWithTitle:(NSString *)title itemType:(FNSettingItemType)itemType;

@end
