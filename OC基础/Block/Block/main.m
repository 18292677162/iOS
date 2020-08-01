//
//  main.m
//  Block
//
//  Created by Pinna on 2020/7/4.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^calculte) (int, int);

int main(int argc, const char * argv[]) {
    /*
    int (^sumBlock) (int, int);
    sumBlock = ^(int val1, int val2){
        return val1 + val2;
    };
    NSLog(@"sum = %i", sumBlock(10, 20));
     */
    
    calculte sumBlock = ^(int v1, int v2){
        return v1 + v2;
    };
    NSLog(@"sum = %i", sumBlock(10, 20));
    
    calculte minusBlock = ^(int v1, int v2){
        return v1 - v2;
    };
    NSLog(@"minus = %i", minusBlock(10, 20));
    return 0;
}
