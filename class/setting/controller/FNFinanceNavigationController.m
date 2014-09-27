//
//  FNFinanceNavigationController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNFinanceNavigationController.h"

@interface FNFinanceNavigationController ()

@end

@implementation FNFinanceNavigationController

+(void)initialize{
    
    //取出navigationBar
    UINavigationBar *bar=[UINavigationBar appearance];
    //取出barButtonItem
    UIBarButtonItem *barItem=[UIBarButtonItem appearance];
    
    NSString *bg;
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0) {
        bg=@"NavBar64";
        //设置导航栏的渐变色为白色（iOS7中返回箭头的颜色变为这个颜色：白色）
        bar.tintColor=[UIColor whiteColor];
    }else{
        bg=@"NavBar";
        //设置status背景颜色
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
        //设置左右button样式
        [barItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [barItem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [barItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    }
    //设置背景
    [bar setBackgroundImage:[UIImage imageNamed:bg] forBarMetrics:UIBarMetricsDefault];
    //设置title文字颜色
    [bar setTitleTextAttributes:@{
                                  UITextAttributeTextColor:[UIColor whiteColor]
                                  }];
    //设置左右item文字颜色，大小
    [barItem setTitleTextAttributes:@{
                                      UITextAttributeTextColor:[UIColor whiteColor],
                                      UITextAttributeFont:[UIFont systemFontOfSize:14]
                                      } forState:UIControlStateNormal];
    [barItem setTitleTextAttributes:@{
                                      UITextAttributeFont:[UIFont systemFontOfSize:14],
                                      UITextAttributeTextColor:[UIColor blueColor]
                                      } forState:UIControlStateHighlighted];
}

/*  ios7 preferredStatusBarStyle设置状态栏
    ios6 UIApplication设置状态栏
 */
-(UIStatusBarStyle)preferredStatusBarStyle{

    return UIStatusBarStyleLightContent;
}

@end
