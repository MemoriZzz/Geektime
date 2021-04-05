//
//  ViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    view2.frame = CGRectMake(150, 150, 100, 100);
    [self.view addSubview:view2];
    
}


@end
