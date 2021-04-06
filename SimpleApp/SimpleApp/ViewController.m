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
    
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor systemTealColor];
    myView.frame = CGRectMake(148, 150, 100, 50);
    [self.view addSubview:myView];
    
    self.navigationItem.title = @"NEWS";
    
    //create gesture
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    //add gesture to myView(a teal view)
    [myView addGestureRecognizer:tapGesture];

}
- (void)pushController{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.navigationItem.title = @"CONTENT";
    
    //add right button
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"RIGHT" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
