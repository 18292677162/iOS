//
//  LocalTextField.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "LocalTextField.h"
#import "LocalItem.h"

@interface LocalTextField () <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong)UIPickerView *picker;
@property (nonatomic, strong)NSArray *dataArr;
@property (nonatomic, assign)NSInteger selectedIndex;
@property (nonatomic, assign)NSInteger cityIndex;

@end

@implementation LocalTextField

- (NSArray *)dataArr {
    if (!_dataArr) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"provinces.plist" ofType:nil];
        _dataArr = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempM = [NSMutableArray array];
        for (NSDictionary *dict in _dataArr) {
            LocalItem *item = [LocalItem itemWithDict:dict];
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
    
    self.picker = picker;
    self.inputView = picker;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (0 == component) {
        return self.dataArr.count;
    } else {
        LocalItem *item = self.dataArr[self.selectedIndex];
        return item.cities.count;
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (0 == component) {
        self.selectedIndex = row;
        [self.picker selectRow:0 inComponent:1 animated:YES];
        [self.picker reloadComponent:1];
    }
    self.cityIndex = [self.picker selectedRowInComponent:1];
    LocalItem *item = self.dataArr[self.selectedIndex];
    self.text = [NSString stringWithFormat:@"%@-%@", item.name, item.cities[self.cityIndex]];
}

// 设置数据
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (0 == component) {
        LocalItem *item = self.dataArr[row];
        return item.name;
    } else {
        LocalItem *item = self.dataArr[self.selectedIndex];
        return item.cities[row];
    }
}

- (void)initText {
    [self pickerView:self.picker didSelectRow:0 inComponent:0];
}

@end
