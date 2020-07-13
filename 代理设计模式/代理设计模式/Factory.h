//
//  Factory.h
//  代理设计模式
//
//  Created by Pinna on 2020/7/12.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "SellProtocol.h"

// @class Store, FakeStore;

NS_ASSUME_NONNULL_BEGIN
@class Factory;

@protocol FactoryProtocol <NSObject>

- (void)factorySell:(Factory *)factory;

@end

@interface Factory : NSObject

// 货物
@property (nonatomic, assign) int Goods;

// 卖货
-(void)factoryWantSell;

// 商店
@property (nonatomic, strong) id<FactoryProtocol> store;

@end

NS_ASSUME_NONNULL_END
