//
//  ViewController.m
//  MethodSwizzlingDemo
//
//  Created by ChenMan on 2018/5/3.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+Limit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //测试代码
    NSArray *array = @[@0, @1, @2, @3];
    [array objectAtIndex:3];
    //本来要奔溃的
    [array objectAtIndex:4];
    
    
    [self setupSubViews];
}

-(void)setupSubViews{
    
    UIButton *btn = [UIButton new];
    btn =[[UIButton alloc]initWithFrame:CGRectMake(100,100,100,40)];
    [btn setTitle:@"btnTest"forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor]forState:UIControlStateNormal];
    btn.acceptEventInterval = 3;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAction)forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction{
    NSLog(@"btnAction is executed");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
