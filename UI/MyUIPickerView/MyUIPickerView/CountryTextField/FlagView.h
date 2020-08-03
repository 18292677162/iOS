//
//  FlagView.h
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class FlagItem;

@interface FlagView : UIView

@property (nonatomic, strong)FlagItem *flagItem;

+ (instancetype)flagView;

@end

NS_ASSUME_NONNULL_END
