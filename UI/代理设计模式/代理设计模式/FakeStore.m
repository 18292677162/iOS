//
//  FakeStore.m
//  代理设计模式
//
//  Created by Pinna on 2020/7/13.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "FakeStore.h"
#import "Factory.h"

@implementation FakeStore

-(void)factorySell:(Factory *)factory {
    factory.Goods--;
    NSLog(@"商店B代销:%d", factory.Goods);
}
@end
