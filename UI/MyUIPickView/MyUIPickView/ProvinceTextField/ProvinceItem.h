//
//  ProvinceItem.h
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProvinceItem : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSArray *cities;

+ (instancetype)provinceItemWithDict:(NSDictionary *)dict;


@end

NS_ASSUME_NONNULL_END
