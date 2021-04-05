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

- (instancetype) init{
    self = [super init];
    if(self){
        
    }
    //Breakpoint here:
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    //Breakpoint here:
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated{
    //Breakpoint here:
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    //Breakpoint here:
    [super viewWillDisappear:animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    //Breakpoint here:
    [super viewDidDisappear:animated];
}



- (void)viewDidLoad {
    //Breakpoint here:
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor redColor];
    myView.frame = CGRectMake(100, 100, 100, 100);
    //Breakpoint here:
    [self.view addSubview:myView];

}


@end
