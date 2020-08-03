//
//  CountryTextField.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "CountryTextField.h"
#import "FlagView.h"
#import "FlagItem.h"

@interface CountryTextField () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong)NSArray *dataArr;
@property (nonatomic, strong)UIPickerView *pickerView;

@end

@implementation CountryTextField

- (NSArray *)dataArr {
    if (!_dataArr) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"flags.plist" ofType:nil];
        _dataArr = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempM = [NSMutableArray array];
        for (NSDictionary *dict in _dataArr) {
            FlagItem *item = [FlagItem itemWithDict:dict];
            [tempM addObject:item];
        }
        _dataArr = tempM;
    }
    return _dataArr;
}

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
    UIPickerView *picker = [[UIPickerView alloc] init];
    picker.delegate = self;
    picker.dataSource = self;
    
    self.pickerView = picker;
    self.inputView = picker;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 80;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.dataArr.count;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    FlagView *flagView = [FlagView flagView];
    flagView.flagItem = self.dataArr[row];
    
    return flagView;
}

// 选中哪一行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    FlagItem *item = self.dataArr[row];
    self.text = item.name;
}

// 提供默认选中1行的方法
- (void)initText {
    [self pickerView:self.pickerView didSelectRow:0 inComponent:0];
}

@end
