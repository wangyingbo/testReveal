//
//  ViewController.m
//  testReveal
//
//  Created by 王迎博 on 16/7/18.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"
#import "MyVC.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //测试层级关系
    [self testSomeViews];
    
    
    
}


- (IBAction)goToNext:(id)sender
{
    MyVC *vc = [[MyVC alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}


/**
 *  测试层级关系
 */
- (void)testSomeViews
{
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:view1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
