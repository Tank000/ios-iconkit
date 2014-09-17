//
//  IconImageView.m
//  iconkit
//
//  Created by tyt on 14-9-17.
//  Copyright (c) 2014年 taguage. All rights reserved.
//

#import "IconImageView.h"

@implementation IconImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        padding = 0;
        red = 0 ;
        green = 0 ;
        blue = 0 ;
        alpha = 1.0f;
        font = [UIFont fontWithName:@"FontAwesome" size:frame.size.width];//icon font
    }
    return self;
}

-(void)setPadding:(CGFloat)p
{
    padding = p;
    font = [UIFont fontWithName:@"FontAwesome" size:self.frame.size.width-padding*2];
}

-(void)setIcon:(NSString *)str
{
    icon = str;
}

-(void)setColor:(int)rgbValue withAlpha:(CGFloat) a
{
    red = ((rgbValue & 0xFF0000) >> 16)/255.0 ;
    green = ((rgbValue & 0xFF00) >> 8)/255.0 ;
    blue = (rgbValue & 0xFF)/255.0 ;
    alpha = a;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    if(icon){
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextSetRGBFillColor (ctx,  red, green, blue, alpha);//set fill color
        [icon drawAtPoint:CGPointMake(padding+0.1*rect.size.width, padding) withFont:font];
        CGContextStrokePath(ctx);
    }
}

@end
