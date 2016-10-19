//
//  StyleBox.h
//  StyleBox
//
//  Created by iosh on 16/10/18.
//  Copyright © 2016年 iosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StyleBoxDelegate <NSObject>

/** 点击触发事件*/
- (void)StyleBoxDidSelectItemWithIndex:(NSInteger)index;

@end

@interface StyleBox : UIView <UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,weak) id<StyleBoxDelegate>delegate;

/** collectionView周边的距离*/
@property (nonatomic,assign) UIEdgeInsets ViewEdgeInsets;
/** 列距 默认值：10*/
@property (nonatomic,assign) CGFloat interitemSpacing;
/** 行距 默认值：10*/
@property (nonatomic,assign) CGFloat lineSpacing;
/** 标题*/
@property (nonatomic,strong) NSArray *titles;
/** 图片*/
@property (nonatomic,strong) NSArray *icons;

/** 九宫格 @parameter 列数：arrange 行数：rank*/
- (instancetype)initWithFrame:(CGRect)frame
                      Arrange:(NSInteger)arrange
                         Rank:(NSInteger)rank;

@end
