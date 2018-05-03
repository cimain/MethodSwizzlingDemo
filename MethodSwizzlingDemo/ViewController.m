//
//  ViewController.m
//  MethodSwizzlingDemo
//
//  Created by ChenMan on 2018/5/3.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "ViewController.h"

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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
