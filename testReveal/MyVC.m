//
//  MyVC.m
//  testReveal
//
//  Created by 王迎博 on 16/7/18.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "MyVC.h"

#define VIEW_W [UIScreen mainScreen].bounds.size.width
#define VIEW_H [UIScreen mainScreen].bounds.size.height

@interface MyVC ()
{
    UIWindow *myWindow;
}
@end

@implementation MyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *tipLB = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 30)];
    tipLB.text = @"点击页面任意处添加window";
    tipLB.textColor = [UIColor lightGrayColor];
    tipLB.textAlignment = NSTextAlignmentCenter;
    tipLB.font = [UIFont systemFontOfSize:15.0];
    tipLB.center = self.view.center;
    [self.view addSubview:tipLB];

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //测试UIWindows
    [self testWindow];
}

/**
 *  测试UIWindows
 */
- (void)testWindow
{
    myWindow = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    myWindow.windowLevel = UIWindowLevelNormal;
    myWindow.backgroundColor = [UIColor lightGrayColor];
    myWindow.hidden = NO;
    myWindow.userInteractionEnabled = YES;

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(VIEW_W/2 - 40, 200, 80, 40)];
    [btn setTitle:@"收起" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(hideWindow:) forControlEvents:UIControlEventTouchUpInside];
    [myWindow addSubview:btn];
}


/**
 *  点击窗口隐藏添加的新窗口
 */
- (void)hideWindow:(UIGestureRecognizer *)gesture
{
    myWindow.hidden = YES;
    myWindow = nil;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
