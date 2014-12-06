//
//  ViewController.m
//  iosbegining
//
//  Created by 杜承玖 on 14/12/6.
//  Copyright (c) 2014年 maxwell. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end


@implementation ViewController

/**
 *  执行3D动画
 *
 *  @param sender button
 */
- (IBAction)animation:(id)sender {
    CATransition *ca = [CATransition animation];
//    ca.type = @"cube";    //3D
//    ca.type = @"rippleEffect";//水波
    ca.type = @"pageCurl";//翻页
    ca.subtype = @"fromLeft";//翻页的方向，从左往右
    ca.duration = 1;
    [self.view.layer addAnimation:ca forKey:nil];
    
}

/**
 *  点击按钮，让应用程序图标的右上角出现一个数字10
 */
- (IBAction)click {
    
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
    
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
    
    [UIApplication sharedApplication].applicationIconBadgeNumber = 10;
}

#pragma mark - UITableview Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"产品-%ld", indexPath.row];
    cell.detailTextLabel.text = @"这个产品好";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
