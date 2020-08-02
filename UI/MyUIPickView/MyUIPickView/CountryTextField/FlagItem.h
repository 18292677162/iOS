//
//  flagModel.h
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlagItem : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)UIImage *icon;

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
