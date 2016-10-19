//
//  ViewController.m
//  StyleBox
//
//  Created by iosh on 16/10/18.
//  Copyright © 2016年 iosh. All rights reserved.
//

#import "ViewController.h"
#import "StyleBox.h"
@interface ViewController ()<StyleBoxDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StyleBox *box = [[StyleBox alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 200) Arrange:4 Rank:2];
    box.titles = @[@"你",@"我",@"他",@"她",@"它",@"你",@"我",@"他",@"她",@"它"];
    box.icons = @[@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议",@"投诉建议"];
    box.ViewEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10);  //四周边距
    box.interitemSpacing = 20;      //列距
    box.lineSpacing = 20;           //行距
    box.backgroundColor = [UIColor lightGrayColor]; //背景颜色
    box.delegate = self;
    [self.view addSubview:box];
}

#pragma mark - StyleBoxDelegate
- (void)StyleBoxDidSelectItemWithIndex:(NSInteger)index{
    NSLog(@"=======%ld",index);
}

@end
