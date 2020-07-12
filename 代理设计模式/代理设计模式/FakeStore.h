//
//  FakeStore.h
//  代理设计模式
//
//  Created by Pinna on 2020/7/13.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SellProtocol.h"

@class Factory;

NS_ASSUME_NONNULL_BEGIN

@interface FakeStore : NSObject <SellProtocol>

-(void)storeSell:(Factory *)factory;

@end

NS_ASSUME_NONNULL_END
