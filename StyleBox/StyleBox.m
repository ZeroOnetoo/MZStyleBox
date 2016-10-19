//
//  StyleBox.m
//  StyleBox
//
//  Created by iosh on 16/10/18.
//  Copyright © 2016年 iosh. All rights reserved.
//

#import "StyleBox.h"
#import "StyleBoxLayout.h"
#import "MZStyleBoxCell.h"
@implementation StyleBox
{
    StyleBoxLayout *_layout;
    UICollectionView *_collect;
    NSInteger _arrange;
    NSInteger _rank;
}
- (instancetype)initWithFrame:(CGRect)frame Arrange:(NSInteger)arrange Rank:(NSInteger)rank{
    self = [super initWithFrame:frame];
    if (self) {
        _arrange = arrange; //列数
        _rank = rank;       //行数
        [self creatUI];
    }
    return self;
}
//搭建UI
- (void)creatUI{
    _layout = [[StyleBoxLayout alloc]init];
    _layout.rank = _rank;
    _layout.arrange = _arrange;
    _collect = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:_layout];
    _collect.delegate = self;
    _collect.dataSource = self;
    _collect.backgroundColor = [UIColor whiteColor];
    _collect.showsVerticalScrollIndicator = NO;
    _collect.showsHorizontalScrollIndicator = NO;
    _collect.pagingEnabled = YES;
    UINib *nib = [UINib nibWithNibName:@"MZStyleBoxCell" bundle:[NSBundle mainBundle]];
    [_collect registerNib:nib forCellWithReuseIdentifier:@"cellid"];
    [self addSubview:_collect];
}

#pragma mark - 设置其他属性
- (void)layoutSubviews{
    [super layoutSubviews];
    _layout.minimumInteritemSpacing = self.interitemSpacing;
    _layout.minimumLineSpacing = self.lineSpacing;
    _layout.sectionInset = self.ViewEdgeInsets;
    _collect.backgroundColor = self.backgroundColor;
}
#pragma mark - collectView delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _titles.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MZStyleBoxCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    cell.itemLabel.text = _titles[indexPath.item];
    cell.itemImageVIew.image = [UIImage imageNamed:_icons[indexPath.item]];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self.delegate StyleBoxDidSelectItemWithIndex:indexPath.item];
}



@end
