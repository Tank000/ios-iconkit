//
//  IconImageView.h
//  iconkit
//
//  Created by tyt on 14-9-17.
//  Copyright (c) 2014年 taguage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IconImageView : UIView
{
    CGFloat padding;
    UIFont  *font;
    NSString *icon;
    CGFloat red,green,blue,alpha;
}

-(void)setPadding:(CGFloat)p;
-(void)setIcon:(NSString *)str;
-(void)setColor:(int)rgbValue withAlpha:(CGFloat) a;
@end
