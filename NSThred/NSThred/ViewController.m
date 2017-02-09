//
//  ViewController.m
//  NSThred
//
//  Created by jack on 16/10/11.
//  Copyright © 2016年 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *vi =[[UIView alloc]initWithFrame:CGRectMake(0,0, 200, 100)];
    //    vi.tag=3;
    vi.backgroundColor =[UIColor redColor];
    [self.view addSubview:vi];
    
    
    UILabel *lab =[[UILabel alloc]initWithFrame:vi.frame];

    lab.text=@"dsdsfsdfsdfsdfdsfs";
  lab.font=[UIFont systemFontOfSize:29];
    lab.backgroundColor= [UIColor yellowColor];
    //lab的背景颜色和字体颜色设置成一样的了，所以不显示
    
    lab.textColor=[UIColor redColor];
    lab.textAlignment =NSTextAlignmentCenter;
    lab.adjustsFontSizeToFitWidth =YES;
    lab.text= @"我爱44444444你";
    [vi addSubview:lab];

    
    
    
    
    
    
    NSLog(@"dsdfdsfsdf");
//    让主线程睡眠2秒后执行
//    [NSThread  sleepForTimeInterval:2];
    
    NSThread *thred=[[NSThread alloc]initWithTarget:self selector:@selector(thread01:) object:nil];
    thred.name=@"1111111";
    [thred start];
   
//    NSLog(@"-----%@",[NSThread currentThread]);

    //[NSThread detachNewThreadSelector:@selector(theThread02) toTarget:self withObject:nil];

}


#pragma mark -  000
-(void)thread01:(NSThread *)thred{
    
    int a =1;
    while (a<10000) {
        a++;
        NSLog(@"%d",a);
    }
    
    [thred  cancel];
//    [NSThread  exit];
    @synchronized(self) {
        
        NSLog(@"线程退出");
    }

 
}
#pragma mark - kkkkkkk
-(void)theThread02{
    NSLog(@"222-----%@",[NSThread currentThread]);
   UIView *vi = [self.view  viewWithTag:3];
//    UILabel *lab =[[UILabel alloc]init];
//    lab.bounds=vi.bounds;
//    lab.center=vi.center;
//    lab.font=[UIFont systemFontOfSize:11];
//    lab.backgroundColor= [UIColor redColor];
//    lab.textColor=[UIColor yellowColor];
//    lab.text= @"我爱你";
//    [vi addSubview:lab];
   vi.layer.cornerRadius=50;
    [self performSelectorOnMainThread:@selector(refreshView:) withObject:vi waitUntilDone:NO];
    
    
    
}
-(void)refreshView:(UIView *)vie{
//    [self.view addSubview:vie];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPress:(id)sender {
//      [NSThread  sleepForTimeInterval:2];
    UIView *vi =[self.view viewWithTag:3];
    vi.backgroundColor =[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
 
    [self  performSelector:@selector(ddddelete:) withObject:vi afterDelay:3];

    
  
}
-(void)ddddelete:(UIView *)vi{
//    UIView *v =vi;

//    [v removeFromSuperview];
    [NSThread  detachNewThreadSelector:@selector(theThread02) toTarget:self withObject:nil];
    
    
    NSLog(@"ssss");

}


//这样是删除的button     sender 就是button本身
//-(void)ddddelete:(UIView *)sender{
//    UIView *vi =sender;
//
//    [vi removeFromSuperview];
//    NSLog(@"ssss");
//
//}

@end
