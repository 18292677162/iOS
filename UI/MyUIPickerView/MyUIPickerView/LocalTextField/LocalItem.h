//
//  LocalItem.h
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocalItem : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSArray *cities;

+ (instancetype)itemWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
