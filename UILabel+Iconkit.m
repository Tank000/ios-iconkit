//
//  UILabel+Iconkit.m
//  iconkit
//
//  Created by tyt on 14-9-17.
//  Copyright (c) 2014年 taguage. All rights reserved.
//

#import "UILabel+Iconkit.h"

@implementation UILabel (Iconkit)

- (void)setIcon:(NSString *)icon
{
    self.font = [UIFont fontWithName:@"FontAwesome" size:36];
    self.text = icon;
}

@end
