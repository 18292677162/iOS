//
//  FlagView.h
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlagItem;
@interface FlagView : UIView

@property (nonatomic, strong)FlagItem *flagItem;

+ (instancetype)flagView;

@end
