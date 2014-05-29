//
//  ViewController.m
//  DrawRectDemo
//
//  Created by MacBook Pro on 14-4-25.
//  Copyright (c) 2014年 MaFengWo. All rights reserved.
//

#import "ViewController.h"
#import "TriangleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	TriangleView *view = [[TriangleView alloc] initWithFrame:CGRectMake(0, 20, 320, 400)];
    [self.view addSubview:view];
    
    //创建一个基于UIImage的图形上下文
    UIGraphicsBeginImageContext(CGSizeMake(320, 450));
    //取出“当前”上下文，也就是上句话创建的上下文，返回CGContextRef类型
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //开始向上下文中增加路径：即开始绘图
    CGContextBeginPath(ctx);
    //画圆，第一个参数为上下文，第二个和第三个为圆点得xy坐标，第四个为圆半径，第五个为开始的弧度，第六个为结束的弧度，第七个为顺时针和逆时针（对应0和1）
    CGContextAddArc(ctx, 80, 90, 30, 0, 2*M_PI, 0);
    //设置填充颜色
    CGContextSetRGBFillColor(ctx, 0.8, 0, 0, 1);
    //填充颜色
    CGContextFillPath(ctx);
    //从上下文中取得UIImage对象
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    //绘图完毕，撤销上下文
    UIGraphicsEndImageContext();
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imageView];
    [self createRadius];
    [self createRect];
}
- (void)createRect {
    UIGraphicsBeginImageContext(CGSizeMake(320, 460));
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ref);
    
//    CGContextAddRect(ref, CGRectMake(200, 200, 100, 100));
    CGContextMoveToPoint(ref, 200, 200);
    CGContextAddLineToPoint(ref, 200, 300);
    
    CGContextSetRGBFillColor(ref, 1, 0.5, 2, 2);
//    CGContextSetRGBStrokeColor(ref, 0, 0, 0, 1);
    CGContextFillPath(ref);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *view = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:view];
    
}
- (void)createRadius {
    UIGraphicsBeginImageContext(CGSizeMake(320, 460));
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ref);
    CGContextMoveToPoint(ref, 160, 150);
    CGContextAddArcToPoint(ref, 150, 200, 50, 150, 200);
    CGContextSetRGBFillColor(ref, 0, 0, 0, 1);
    CGContextFillPath(ref);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *view= [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
