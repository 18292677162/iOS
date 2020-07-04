//
//  main.m
//  Block应用
//
//  Created by Pinna on 2020/7/4.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <Foundation/Foundation.h>

// 铂金-钻石晋级赛
#pragma mark - 一般写法,代码重复高
/*
void BO1()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    NSLog(@"上单");
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void BO2()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    NSLog(@"中单");
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void BO3()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    NSLog(@"打野");
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void BO4()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    NSLog(@"辅助");
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void BO5()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    NSLog(@"AD");
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}
*/

#pragma mark - 封装函数
/*
void startGame()
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
}

void endGame()
{
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void bo1()
{
    startGame();
    NSLog(@"上单");
    endGame();
}

void bo2()
{
    startGame();
    NSLog(@"中单");
    endGame();
}

void bo3()
{
    startGame();
    NSLog(@"打野");
    endGame();
}

void bo4()
{
    startGame();
    NSLog(@"辅助");
    endGame();
}

void bo5()
{
    startGame();
    NSLog(@"AD");
    endGame();
}
*/

#pragma mark - block
void playGame(void (^game)())
{
    NSLog(@"登录游戏");
    NSLog(@"选择位置");
    NSLog(@"ban英雄");
    game();
    NSLog(@"选择英雄");
    NSLog(@"进入游戏");
    NSLog(@"胜利!");
}

void BO1()
{
    playGame(^{
        NSLog(@"上单");
    });
}

void BO2()
{
    playGame(^{
        NSLog(@"中单");
    });
}

void BO3()
{
    playGame(^{
        NSLog(@"打野");
    });
}

void BO4()
{
    playGame(^{
        NSLog(@"辅助");
    });
}

void BO5()
{
    playGame(^{
        NSLog(@"AD");
    });
}


int main(int argc, const char * argv[]) {
    BO3();
    return 0;
}
