//
//  AppDelegate.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 加载控制器
    ViewController *rootVC = [[ViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    // rootVC.view.backgroundColor = [UIColor redColor];
    // 设置跟控制器
    self.window.rootViewController = rootVC;
    // 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
