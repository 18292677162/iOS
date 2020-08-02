//
//  ProvinceTextField.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "ProvinceTextField.h"
#import "ProvinceItem.h"

@interface ProvinceTextField() <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong)NSArray *dataArr;
@property (nonatomic, assign)NSInteger provinceIndex;
@property (nonatomic, strong)UIPickerView *pickView;

@end

@implementation ProvinceTextField

- (NSArray *)dataArr {
    if (!_dataArr) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"provinces.plist" ofType:nil];
        _dataArr = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *temp = [NSMutableArray array];
        for (NSDictionary *dict in _dataArr) {
            [temp addObject:[ProvinceItem provinceItemWithDict:dict]];
        }
        _dataArr = temp;
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
    UIPickerView *pick = [[UIPickerView alloc] init];
    pick.delegate = self;
    self.inputView = pick;
    self.pickView = pick;
}

#pragma mark - UIpickViewDelegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return self.dataArr.count;
    } else {
        ProvinceItem *item = self.dataArr[self.provinceIndex];
        return item.cities.count;
    }
}

// 设置数据
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        ProvinceItem *item = self.dataArr[row];
        return item.name;
    } else {
        ProvinceItem *item = self.dataArr[self.provinceIndex];
        return item.cities[row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        self.provinceIndex = row;
        [self.pickView selectRow:0 inComponent:1 animated:YES];
        [self.pickView reloadComponent:1];
    }
    ProvinceItem *item = self.dataArr[self.provinceIndex];
    
    NSInteger cityIndex = [self.pickView selectedRowInComponent:1];
    
    self.text = [NSString stringWithFormat:@"%@-%@", item.name, item.cities[cityIndex]];
}

- (void)initWithText {
    [self pickerView:self.pickView didSelectRow:0 inComponent:0];
}

@end
