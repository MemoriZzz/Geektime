//
//  MeViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/7.
//

#import "MeViewController.h"

@interface MeViewController ()<UIGestureRecognizerDelegate>

@end

@implementation MeViewController


- (instancetype) init{
    self = [super init];
    if(self){
        self.tabBarItem.title = @"me";
        self.tabBarItem.image = [UIImage imageNamed:@"file path7"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"file path8"];
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:234.0/255.0 green:185.0/255.0 blue:185.0/255.0 alpha:1.0]; //coral
    
    //alert window pop up with view
    [self popUp];
    
    //alert window pop up by click view
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(popUp)];
    tapGesture.delegate = self;
    [self.view addGestureRecognizer:tapGesture];


}


- (void) popUp{
    NSLog(@"pop-up window");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"MY ALERT" message:@"this is an alert!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction: ok];
    [alert addAction: cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}


@end
