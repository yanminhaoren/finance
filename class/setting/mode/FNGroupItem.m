//
//  FNGroupItem.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNGroupItem.h"

@implementation FNGroupItem

+(id)GroupWithHeader:(NSString *)header bottom:(NSString *)bottom items:(NSArray *)items{
    
    FNGroupItem *group=[[self init] alloc];
    group.header=header;
    group.bottom=bottom;
    group.items=items;
    return  group;
}

@end
