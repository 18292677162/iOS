//
//  ViewController.m
//  UIImageView动画
//
//  Created by Pinna on 2020/7/6.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak)IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:@"1"];
}

#pragma mark - 开始动画
- (IBAction)startAction {
    //1.加载图片
    NSMutableArray<UIImage *> *imageArr = [[NSMutableArray alloc] init];
    
    for (int i = 1; i <= 20; ++i) {
        // 创建Image对象
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d", i]];
        // 插入
        [imageArr addObject:image];
    }
    
    //2.设置动画图片
    self.imageView.animationImages = imageArr;
    
    // 播放次数 0无限
    self.imageView.animationRepeatCount = 0;
    
    // 播放时长  1秒 30 帧
    self.imageView.animationDuration = 1.0;
    
    // 开始动画
    [self.imageView startAnimating];
}

#pragma mark - 结束动画
- (IBAction)endAction {
    [self.imageView stopAnimating];
}

@end
