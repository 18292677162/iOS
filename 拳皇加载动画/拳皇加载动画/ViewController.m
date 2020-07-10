//
//  ViewController.m
//  拳皇加载动画
//
//  Created by Pinna on 2020/7/7.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) NSArray *bigImage;
@property (nonatomic, strong) NSArray *smallImage;
@property (nonatomic, strong) NSArray *standImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 加载图片
    NSMutableArray<UIImage *> *standImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 10; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"stand_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [standImage addObject:image];
    }
    self.standImage = standImage;
    
    NSMutableArray<UIImage *> *bigImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 87; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"dazhao_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [bigImage addObject:image];
    }
    self.bigImage = bigImage;
    
    NSMutableArray<UIImage *> *smallImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 21; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"xiaozhao1_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [smallImage addObject:image];
        
    }
    self.smallImage = smallImage;
    
    [self stand];
}

- (IBAction)stand {
    /*
    NSMutableArray<UIImage *> *bigImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 87; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"dazhao_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [bigImage addObject:image];
        
    }
     */
    // 动画图片
    self.imageView.animationImages = self.standImage;
    // 次数
    self.imageView.animationRepeatCount = 0;
    // 速度
    self.imageView.animationDuration = 1.0;
    // 开始
    [self.imageView startAnimating];
}

- (IBAction)bigzhao {
    /*
    NSMutableArray<UIImage *> *bigImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 87; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"dazhao_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [bigImage addObject:image];
        
    }
     */
    // 动画图片
    self.imageView.animationImages = self.bigImage;
    // 次数
    self.imageView.animationRepeatCount = 1;
    // 速度
    self.imageView.animationDuration = 5.0;
    // 开始
    [self.imageView startAnimating];
    
    // if(self.imageView isAnimating)
    // 站立延迟
    // Selector 方法
    // object 参数
    // afterDelay 时间
    [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
}

- (IBAction)smallzhao {
    /*
    NSMutableArray<UIImage *> *smallImage = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 21; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"dazhao_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        [smallImage addObject:image];
        
    }
     */
    // 动画图片
    self.imageView.animationImages = self.smallImage;
    // 次数
    self.imageView.animationRepeatCount = 1;
    // 速度
    self.imageView.animationDuration = 1.0;
    // 开始
    [self.imageView startAnimating];
    
    [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
}

@end
