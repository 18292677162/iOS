//
//  Factory.m
//  代理设计模式
//
//  Created by Pinna on 2020/7/12.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "Factory.h"
// #import "Store.h"
// #import "FakeStore.h"

@implementation Factory

-(void)factoryWantSell{
    NSLog(@"工厂想卖货");
    
    // 通知商场卖货，虽然代理都遵守了协议，但是不一定实现方法
    // 调用时一定要进行判断，判断商店是否真正能帮你卖货
    if ([self.store respondsToSelector:@selector(factorySell:)]) {
        [self.store factorySell:self];
    }
}

@end
