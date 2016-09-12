//
//  ViewController.m
//  LinkTableViewDemo
//
//  Created by 赵富星 on 16/9/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ViewController.h"
#import "ProductCateogoryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)testButtonWasPressed:(UIButton *)sender {
    ProductCateogoryViewController *categoryController = [[ProductCateogoryViewController alloc] init];
    [self.navigationController pushViewController:categoryController animated:YES];
}

@end
