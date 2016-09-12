//
//  ProductCateogoryViewController.m
//  LinkTableViewDemo
//
//  Created by 赵富星 on 16/9/12.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ProductCateogoryViewController.h"
#import "ProductCategoryTableViewCell.h"

@interface ProductCateogoryViewController ()
<UITableViewDelegate,
UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *leftTableView;
@property (weak, nonatomic) IBOutlet UITableView *rightTableView;

@end

@implementation ProductCateogoryViewController


#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCell];
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupView {
    self.navigationController.navigationBar.translucent = NO;
}

- (void)registerCell {
    UINib *categoryNib = [UINib nibWithNibName:NSStringFromClass([ProductCategoryTableViewCell class]) bundle:nil];
    [self.leftTableView registerNib:categoryNib forCellReuseIdentifier:NSStringFromClass([ProductCategoryTableViewCell class])];
    [self.rightTableView registerNib:categoryNib forCellReuseIdentifier:NSStringFromClass([ProductCategoryTableViewCell class])];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"indexPath::::%@", indexPath);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.leftTableView) {
        return 45.0f;
    }
    return 80.0f;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tableView == self.leftTableView ? 7 : 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductCategoryTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ProductCategoryTableViewCell class])];
    return cell;
}


@end
