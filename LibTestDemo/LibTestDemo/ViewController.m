//
//  ViewController.m
//  LibTestDemo
//
//  Created by mac on 15/8/2.
//  Copyright (c) 2015年 com.liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *myNmae = @"lib库与项目在workspace中的使用";
    NSString *md5MyName = [myNmae md5To32Bit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
