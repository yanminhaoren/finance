//
//  FNProduct.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNProduct.h"

@implementation FNProduct


+(id)productWithDict:(NSDictionary *)dict{
    FNProduct *product=[[self alloc] init];
    product.title=dict[@"title"];
    product.image=dict[@"icon"];
    return product;
}

@end
