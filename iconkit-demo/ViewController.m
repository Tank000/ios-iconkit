//
//  ViewController.m
//  iconkit
//
//  Created by tyt on 14-9-17.
//  Copyright (c) 2014年 tank. All rights reserved.
//

#import "ViewController.h"
#import "icon.h"
#import "IconImageView.h"
#import "UILabel+Iconkit.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1];

    
    IconImageView *img = [[IconImageView alloc]initWithFrame:CGRectMake(0, 0, 160, 160)];
    [img setPadding:4];
    [img setIcon:fa_apple];
    [img setColor:0xececec withAlpha:1.0f];
    [img setNeedsDisplay];//manual redraw
    [self.view addSubview:img];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, 40, 40)];
    label.textColor = [UIColor blackColor];
    label.center = img.center;
    label.textAlignment = NSTextAlignmentCenter;
    [label setIcon:fa_github];
    [self.view addSubview:label];
    
    UIImageView *imgview = [[UIImageView alloc]initWithFrame:CGRectMake(0, 160, 80, 80)];
    imgview.image = [Icon getIcon:fa_home withSize:80];
    [self.view addSubview:imgview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
