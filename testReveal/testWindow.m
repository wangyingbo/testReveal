//
//  testWindow.m
//  testReveal
//
//  Created by 王迎博 on 16/7/18.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "testWindow.h"

@interface testWindow ()

@end

@implementation testWindow
{
    UIButton *_button;
}

+ (testWindow *)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        sharedInstance = [[self alloc]initWithFrame:[UIScreen mainScreen].bounds];
    });
    return sharedInstance;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
        btn.center = self.center;
        [btn setTitle:@"收起" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self addSubview:btn];
        [btn addTarget:self action:@selector(completed:) forControlEvents:UIControlEventTouchUpInside];
        _button = btn;
    }
    return self;
}

- (void)show
{
    [self makeKeyWindow];
    self.hidden = NO;
}

- (void)completed:(UIButton *)sender
{
    [self resignKeyWindow];
    self.hidden = YES;
}

@end
