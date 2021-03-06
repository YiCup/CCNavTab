//
//  CCNavigationController.m
//  CCNavTab
//
//  Created by bear on 16/3/24.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "CCNavigationController.h"


#define  CCTabBarNotifacationIsHiden @"CCTabBarHiden"

@interface CCNavigationController ()<UINavigationControllerDelegate>

@end

@implementation CCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    

    self.navigationBar.shadowImage=[[UIImage alloc]init];


}





- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{

    // self - 导航控制器
    if (self.viewControllers.count) { // 不是根控制器

        viewController.hidesBottomBarWhenPushed = YES;
    }


    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.topViewController.navigationItem.backBarButtonItem = backItem;


    // 调用系统默认做法,因为只有系统才知道怎么做push
    [super pushViewController:viewController animated:animated];
}



@end
