//
//  FakeStore.h
//  代理设计模式
//
//  Created by Pinna on 2020/7/13.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "Factory.h"

// @class Factory;
@protocol FactoryProtocol;

@interface FakeStore : NSObject <FactoryProtocol>

// - (void)factorySell:(Factory *)factory;

@end

