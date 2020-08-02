//
//  flagModel.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "FlagItem.h"

@implementation FlagItem

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    FlagItem *item = [[FlagItem alloc] init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}

- (void)setIcon:(NSString *)icon {
    UIImage *image = [UIImage imageNamed:icon];
    _icon = image;
}

@end
