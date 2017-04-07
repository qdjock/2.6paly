//
//  ViewController.m
//  E-shop
//
//  Created by jack on 17/4/7.
//  Copyright © 2017年 qq:569617508. All rights reserved.
//

#import "ViewController.h"
#import "SMSSDKUI.h"
#import "FirstTabBarViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SMSSDKUI showVerificationCodeViewWithMetohd:SMSGetCodeMethodSMS result:^(enum SMSUIResponseState state, NSString *phoneNumber, NSString *zone, NSError *error) {
        
        
        FirstTabBarViewController * first =[FirstTabBarViewController new];
        [self presentViewController:first animated:YES completion:^{
            NSLog(@"进入首页");
            
        }];
        NSLog(@"DDDD");
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
