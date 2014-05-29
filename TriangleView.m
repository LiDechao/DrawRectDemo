//
//  TriangleView.m
//  DrawRectDemo
//
//  Created by MacBook Pro on 14-4-25.
//  Copyright (c) 2014年 MaFengWo. All rights reserved.
//

#import "TriangleView.h"
#import "MyView.h"

@implementation TriangleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        MyView *view = [[MyView alloc] initWithFrame:CGRectMake(0, self.frame.size.height, 320, 45)];
        self.backgroundColor = [UIColor orangeColor];
        [self addSubview:view];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
}

@end
