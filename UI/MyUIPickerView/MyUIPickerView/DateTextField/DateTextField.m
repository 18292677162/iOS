//
//  DateTextField.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "DateTextField.h"

@interface DateTextField ()

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
    UIDatePicker *picker = [[UIDatePicker alloc] init];
    picker.datePickerMode = UIDatePickerModeDate;
    picker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
    
    [picker addTarget:self action:@selector(selectDate) forControlEvents:UIControlEventValueChanged];
    
    self.datePicker = picker;
    self.inputView = picker;
}

- (void)selectDate {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd"];
    self.text = [format stringFromDate:self.datePicker.date];
}

- (void)initText {
    [self selectDate];
}

@end
