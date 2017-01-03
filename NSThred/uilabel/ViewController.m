//
//  ViewController.m
//  uilabel
//
//  Created by jack on 16/10/12.
//  Copyright © 2016年 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *vi =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50 , 50)];
    vi.backgroundColor=[UIColor redColor];
    [self.view  addSubview:vi];
    UILabel *lab =[[UILabel alloc]initWithFrame:vi.frame];
    lab.text=@"dddddd";
    lab.adjustsFontSizeToFitWidth =YES;
    lab.textAlignment =NSTextAlignmentCenter;
    lab.textColor=[UIColor grayColor];
    [vi  addSubview:lab];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
