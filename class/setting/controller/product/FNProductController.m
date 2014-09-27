//
//  FNProductController.m
//  finance
//
//  Created by yanmin on 14-9-8.
//  Copyright (c) 2014年 yanmin. All rights reserved.
//

#import "FNProductController.h"
#import "FNProduct.h"
#import "FNProductCell.h"
@interface FNProductController (){
    NSMutableArray *products;

}

@end

static NSString *ID=@"Cell";

@implementation FNProductController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

-(id)init{

    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    //设置宽高
    flowLayout.itemSize=CGSizeMake(80, 80);
    //设置水平间距
    flowLayout.minimumInteritemSpacing=0;
    //设置垂直间距
    flowLayout.minimumLineSpacing=10;
    //设置margin
    flowLayout.sectionInset=UIEdgeInsetsMake(10, 0, 0, 0);
    return [self initWithCollectionViewLayout:flowLayout];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //加载数据
//    NSURL *url=[[NSBundle mainBundle] URLForResource:@"product.json" withExtension:nil];
//    NSData *data=[NSData dataWithContentsOfURL:url];
//    NSArray *array=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSArray *array=loadJson1(product.json);
    products=[NSMutableArray array];
    for (NSDictionary  *dict in  array) {
        FNProduct *product=[FNProduct productWithDict:dict];
        [products addObject:product];
    }
    //注册tableCell
    UINib *nib=[UINib nibWithNibName:@"FNProductCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:ID];
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return [products count];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    FNProductCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.product=products[indexPath.row];
    return cell;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end
