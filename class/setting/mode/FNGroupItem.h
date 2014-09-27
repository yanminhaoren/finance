//
//  FNGroupItem.h
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FNGroupItem : NSObject

@property (nonatomic,copy) NSString *header;
@property (nonatomic,copy) NSString *bottom;
@property (nonatomic,copy) NSArray *items;


+GroupWithHeader:(NSString *)header bottom:(NSString *) bottom items:(NSArray *) items;

@end
