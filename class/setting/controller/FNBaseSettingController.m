//
//  FNBaseSettingController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNBaseSettingController.h"
#import "FNSettingCell.h"
#import "FNSettingItem.h"
#import "FNGroupItem.h"
@interface FNBaseSettingController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation FNBaseSettingController


-(id)init{
    UITableView *tableView=[[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStyleGrouped];
    self.view=tableView;
    tableView.delegate=self;
    tableView.dataSource=self;
    datas=[NSMutableArray array];
    return self;
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [datas count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    FNGroupItem *group=datas[section] ;
    return [[group items] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID=@"Cell";
    FNSettingCell *cell = [[FNSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    if (cell==nil) {
        cell=[tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    }
    FNGroupItem *group=datas[indexPath.section] ;
    cell.item=group.items[indexPath.row];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //取消选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
     FNGroupItem *group=datas[indexPath.section];
     FNSettingItem *item=group.items[indexPath.row];
    if (item.operation) {
        item.operation();
    }
    if (item.showVc) {
        [self.navigationController pushViewController:[[item.showVc alloc] init] animated:YES];
    }
}


-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    FNGroupItem *group=datas[section];

    return group.bottom;

}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    FNGroupItem *group=datas[section];
    return group.header;
}
@end
