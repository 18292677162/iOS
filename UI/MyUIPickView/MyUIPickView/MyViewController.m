//
//  MyViewController.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "MyViewController.h"
#import "UITextField+InitWithText.h"

@interface MyViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *countryTextField;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (weak, nonatomic) IBOutlet UITextField *localTextField;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.countryTextField.delegate = self;
    self.dateTextField.delegate = self;
    self.localTextField.delegate = self;
}

// 是否允许开始编辑
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSLog(@"%s", __func__);
    return YES;
}

// 开始编辑
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField initWithText];
    NSLog(@"%s", __func__);
}

// 是否允许结束编辑
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSLog(@"%s", __func__);
    return YES;
}

// 结束编辑
- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"%s", __func__);
}

// 是否允许用户文字改变
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@"%s", __func__);
    return NO;
}

@end
