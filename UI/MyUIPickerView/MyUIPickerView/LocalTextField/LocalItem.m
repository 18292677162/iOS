//
//  LocalItem.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "LocalItem.h"

@implementation LocalItem

+ (instancetype)itemWithDict:(NSDictionary *)dict {
    LocalItem *item = [[LocalItem alloc] init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}

@end
