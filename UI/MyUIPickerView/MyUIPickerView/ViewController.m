//
//  ViewController.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+initText.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *countryTextF;
@property (weak, nonatomic) IBOutlet UITextField *dateTextF;
@property (weak, nonatomic) IBOutlet UITextField *localTextF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.countryTextF.delegate = self;
    self.dateTextF.delegate = self;
    self.localTextF.delegate = self;
}

// 是否允许开始编辑
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSLog(@"%s", __func__);
    return YES;
}

// 已经开始编辑
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField initText];
    NSLog(@"%s", __func__);
}

// 是否允许结束编辑
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSLog(@"%s", __func__);
    return YES;
}

// 是否允许改变输入文本
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return NO;
}

@end
