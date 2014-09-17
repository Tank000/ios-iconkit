//
//  Icon.m
//  iconkit
//
//  Created by tyt on 14-9-17.
//  Copyright (c) 2014年 taguage. All rights reserved.
//

#import "Icon.h"

@implementation Icon

+(UIImage *)getIcon:(NSString *)icon  withSize:(CGFloat)s
{
    s = s*2;//for retina;
    CGSize size = CGSizeMake(s, s);
    UIGraphicsBeginImageContext(size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor (ctx,  1, 0, 0, 1.0);//set fill color
    UIFont  *font = [UIFont fontWithName:@"FontAwesome" size:s-4];//icon font
    [icon drawAtPoint:CGPointMake(2, 2) withFont:font];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
