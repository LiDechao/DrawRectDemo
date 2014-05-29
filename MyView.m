//
//  MyView.m
//  DrawRectDemo
//
//  Created by MacBook Pro on 14-4-25.
//  Copyright (c) 2014年 MaFengWo. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //定义画图的path
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    //path移动到开始画图的位置
    [path moveToPoint:CGPointMake(self.frame.size.width/2-30, 0)];
    //从开始位置画一条直线到（160， 150）
    [path addLineToPoint:CGPointMake(self.frame.size.width/2+30, 0)];
    //在从（160，150）画一条线到（10，150）
    [path addLineToPoint:CGPointMake(self.frame.size.width/2, 45)];
    
    //关闭path
    [path closePath];
    
    //三角形内填充绿色
    [[UIColor greenColor] setFill];
    [path fill];
    //三角形的边框为红色
    [[UIColor redColor] setStroke];
    [path stroke];
    
 }


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
