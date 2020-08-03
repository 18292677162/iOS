//
//  FlagView.m
//  MyUIPickerView
//
//  Created by Pinna on 2020/8/3.
//  Copyright © 2020 Pinna. All rights reserved.
//

#import "FlagView.h"
#import "FlagItem.h"

@interface FlagView ()

@property (weak, nonatomic) IBOutlet UILabel *flagName;
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;

@end

@implementation FlagView

+ (instancetype)flagView {
    return [[NSBundle mainBundle] loadNibNamed:@"FlagView" owner:nil options:nil].lastObject;
}

- (void)setFlagItem:(FlagItem *)flagItem {
    _flagItem = flagItem;
    self.flagImage.image = flagItem.icon;
    self.flagName.text = flagItem.name;
}

@end
