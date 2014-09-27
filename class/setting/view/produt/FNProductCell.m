//
//  FNProductCell.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNProductCell.h"
#import "FNProduct.h"

@interface FNProductCell (){

    __weak IBOutlet UIImageView *image;
    __weak IBOutlet UILabel *title;

}

@end


@implementation FNProductCell


-(void)awakeFromNib{
    //设置圆角
    self.layer.cornerRadius=10;
    //设置所有控件都按照父控件边界显示，如果超过就不显示(剪切)
//    self.layer.masksToBounds=YES;
    //剪切所有子控件的边界
    self.clipsToBounds=YES;

}

-(void)setProduct:(FNProduct *)product{
    _product=product;
    image.image=[UIImage imageNamed:product.image];
    title.text=product.title;
    title.font=[UIFont systemFontOfSize:12];
}


@end
