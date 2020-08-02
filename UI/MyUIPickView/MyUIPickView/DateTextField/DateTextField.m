//
//  DateTextField.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "DateTextField.h"

@interface DateTextField()

@property (nonatomic, strong)UIDatePicker *datePicker;

@end

@implementation DateTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp {
    UIDatePicker *pick = [[UIDatePicker alloc] init];
    pick.datePickerMode = UIDatePickerModeDate;
    pick.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
    [pick addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
    
    self.inputView = pick;
    self.datePicker = pick;
}

- (void)dateChange:(UIDatePicker *)pick {
    // 格式化日期
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    format.dateFormat = @"yyyy-MM-dd";
    self.text = [format stringFromDate:pick.date];
}


- (void)initWithText {
    [self dateChange:self.datePicker];
}

@end
