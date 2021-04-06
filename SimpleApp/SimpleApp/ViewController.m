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
    
    self.view.backgroundColor = [UIColor whiteColor]; //set view controller color
    
    UIView *suqare = [[UIView alloc] init];
    suqare.backgroundColor = [UIColor systemTealColor];
    suqare.frame = CGRectMake(148, 150, 100, 100);
    [self.view addSubview:suqare];
    
    self.navigationItem.title = @"NEWS";
    
    //create gesture
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    //add gesture to myView(a teal view)
    [suqare addGestureRecognizer:tapGesture];

}
- (void)pushController{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.navigationItem.title = @"CONTENT";
    viewController.view.backgroundColor = [UIColor systemRedColor];
    
    //add right button
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"RIGHT" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
