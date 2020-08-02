//
//  FlagView.m
//  MyUIPickView
//
//  Created by Pinna on 2020/8/2.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "FlagView.h"
#import "FlagItem.h"

@interface FlagView()

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *icon;


@end

@implementation FlagView

+ (instancetype)flagView {
    return [[NSBundle mainBundle] loadNibNamed:@"FlagView" owner:nil options:nil].lastObject;
}

- (void)setFlagItem:(FlagItem *)flagItem {
    _flagItem = flagItem;
    self.name.text = flagItem.name;
    self.icon.image = flagItem.icon;
}

@end
