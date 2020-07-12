//
//  Factory.h
//  代理设计模式
//
//  Created by Pinna on 2020/7/12.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SellProtocol.h"

// @class Store, FakeStore;

NS_ASSUME_NONNULL_BEGIN

@interface Factory : NSObject

// 货物
@property (nonatomic, assign) int Goods;

// 卖货
-(void)factorySell;

// 商店
@property (nonatomic, strong) id<SellProtocol> store;

@end

NS_ASSUME_NONNULL_END
