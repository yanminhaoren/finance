//
//  FNTabBarItem.m
//  finance
//
//  Created by yanmin on 14-8-31.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNTabBarItem.h"
#import "FNTabBarButton.h"


@interface FNTabBarItem (){

    FNTabBarButton *selectBtn;
}

@end

@implementation FNTabBarItem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"TabBarBack"]]];
    }
    return self;
}

-(void)addItemWithIcon:(NSString *)icon selectIcon:(NSString *)selIcon{
    
    FNTabBarButton *button=[[FNTabBarButton alloc] init];
    [button setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selIcon] forState:UIControlStateSelected];
    NSInteger count=self.subviews.count;
    button.tag=count;
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:button];
    if (count==1) {
        [self btnClick:self.subviews[count-1]];
    }
    [self adjustButtonFrames];

}

-(void)btnClick:(FNTabBarButton *)btn{
    if ([_delegate respondsToSelector:@selector(didSelectFrom:to:)]) {
        [_delegate didSelectFrom:selectBtn.tag to:btn.tag];
    }
    btn.selected=YES;
    selectBtn.selected=NO;
    selectBtn=btn;
}

-(void)adjustButtonFrames{
    int count=self.subviews.count;
    int height=self.frame.size.height;
    int width=self.frame.size.width/count;
    for (int i=0; i<count; i++) {
        FNTabBarButton *button=self.subviews[i];
        button.frame=CGRectMake(width*i, 0, width, height);
    }
}

@end
