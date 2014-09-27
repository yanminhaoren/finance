//
//  FNSettingCell.m
//  finance
//
//  Created by yanmin on 14-9-7.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNSettingCell.h"
#import "FNSettingItem.h"
@implementation FNSettingCell



-(void)setItem:(FNSettingItem *)item{
    
    _item=item;
    self.textLabel.text=item.title;
    self.imageView.image=[UIImage imageNamed:item.image];
    if (item.itemType==FNSettingItemArrow) {
        self.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        self.selectionStyle=UITableViewCellSelectionStyleGray;
    }else if(item.itemType==FNSettingItemSwitch){
        self.accessoryView=[[UISwitch alloc] init];
        self.selectionStyle=UITableViewCellSelectionStyleNone;

    }else{
        self.accessoryType=UITableViewCellAccessoryNone;
        self.selectionStyle=UITableViewCellSelectionStyleGray;
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
}

@end
