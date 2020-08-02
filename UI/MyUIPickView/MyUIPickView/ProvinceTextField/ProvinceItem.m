//
//  ProvinceItem.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "ProvinceItem.h"

@implementation ProvinceItem

+ (instancetype)provinceItemWithDict:(NSDictionary *)dict {
    ProvinceItem *item = [[ProvinceItem alloc] init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}

@end
