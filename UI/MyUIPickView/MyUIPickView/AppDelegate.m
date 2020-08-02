//
//  AppDelegate.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/1.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 创建跟控制器，赋值
    MyViewController *rootVC = [[MyViewController alloc] initWithNibName:@"MyController" bundle:nil];
    
    self.window.rootViewController = rootVC;
    
    // 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
