//
//  FNTabBarItem.h
//  finance
//
//  Created by yanmin on 14-8-31.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FNTabBarDelegate <NSObject>

-(void)didSelectFrom:(NSInteger)fromId to:(NSInteger)toId;

@end


@interface FNTabBarItem : UIView

@property (nonatomic,weak) id<FNTabBarDelegate> delegate;

-(void)addItemWithIcon:(NSString *)icon selectIcon:(NSString *)selIcon;


@end
