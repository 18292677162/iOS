//
//  CountryTextField.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "CountryTextField.h"
#import "FlagItem.h"
#import "FlagView.h"

@interface CountryTextField() <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong)NSArray *dataArr;
@property (nonatomic, strong)UIPickerView *pickView;

@end

@implementation CountryTextField

- (NSArray *)dataArr {
    if (!_dataArr) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"flags.plist" ofType:nil];
        _dataArr = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *temp = [NSMutableArray array];
        for (NSDictionary *dict in _dataArr) {
            FlagItem *item = [FlagItem modelWithDict:dict];
            [temp addObject:item];
        }
        _dataArr = temp;
    }
    return _dataArr;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setUp];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    UIPickerView *pick = [[UIPickerView alloc] init];
    pick.delegate = self;
    self.inputView = pick;
    self.pickView = pick;
}

// 协议方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.dataArr.count;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 80;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    FlagView *flagView = [FlagView flagView];
    // 取出模型
    FlagItem *item = self.dataArr[row];
    // 赋值
    flagView.flagItem = item;
    
    return flagView;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    FlagItem *item = self.dataArr[row];
    self.text = item.name;
}

- (void)initWithText {
    [self pickerView:self.pickView didSelectRow:0 inComponent:0];
}

@end
