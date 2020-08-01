//
//  main.m
//  代理设计模式
//
//  Created by Pinna on 2020/7/12.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory.h"
#import "Store.h"
#import "FakeStore.h"

int main(int argc, const char * argv[]) {
    
    Factory *factory = [[Factory alloc] init];
    Store *store = [[Store alloc] init];
    FakeStore *fakeStore = [[FakeStore alloc] init];
    
    factory.delegate = store;
    
    // 虽然遵守了协议，但是当中并没有实现方法，运行会报错，所以一定在调用时检测方法是否实现
    // factory.store = fakeStore;
    
    factory.Goods = 10;
    NSLog(@"货物总数:%d", factory.Goods);
    
    [factory factoryWantSell];
    
    // [store storeSell:factory];
    
    return 0;
}
