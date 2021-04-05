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
    
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor redColor];
    myView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:myView];

}


@end
