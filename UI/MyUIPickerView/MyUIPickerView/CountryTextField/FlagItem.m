//
//  FlagItem.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "FlagItem.h"

@implementation FlagItem

+ (instancetype)itemWithDict:(NSDictionary *)dict {
    FlagItem *item = [[FlagItem alloc] init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}

- (void)setIcon:(NSString *)icon {
    _icon = [UIImage imageNamed:icon];
}

@end
