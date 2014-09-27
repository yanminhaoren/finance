//
//  FNProduct.h
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FNProduct : NSObject

@property (nonatomic,copy) NSString *image;
@property (nonatomic,copy) NSString *title;


+(id)productWithDict:(NSDictionary *)dict;

@end
