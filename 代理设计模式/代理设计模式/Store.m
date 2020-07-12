//
//  Store.m
//  代理设计模式
//
//  Created by Pinna on 2020/7/12.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "Store.h"
#import "Factory.h"

@implementation Store

-(void)storeSell:(Factory *)factory {
    factory.Goods--;
    NSLog(@"商店代销:%d", factory.Goods);
}

@end
