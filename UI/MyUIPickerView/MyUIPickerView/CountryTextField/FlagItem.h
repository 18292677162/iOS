//
//  FlagItem.h
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlagItem : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)UIImage *icon;

+ (instancetype)itemWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
