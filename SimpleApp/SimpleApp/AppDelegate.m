//
//  AppDelegate.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //create a tabbar controller
    UITabBarController *tabbarController  = [[UITabBarController alloc] init];
    
    
    //a navigation controller needs a root view
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    //create 4 view controller and set their background colors.
    
//    UIViewController *viewController1 = [[UIViewController alloc]init];
    navigationController.view.backgroundColor = [UIColor systemRedColor]; //set news page as navigation controller
    navigationController.tabBarItem.title = @"news";
    navigationController.tabBarItem.image = [UIImage imageNamed:@"file path1"];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"file path2"];
    
    
    UIViewController *viewController2 = [[UIViewController alloc]init];
    viewController2.view.backgroundColor = [UIColor orangeColor];
    viewController2.tabBarItem.title = @"video";
    viewController2.tabBarItem.image = [UIImage imageNamed:@"file path3"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed:@"file path4"];
    
    UIViewController *viewController3 = [[UIViewController alloc]init];
    viewController3.view.backgroundColor = [UIColor yellowColor];
    viewController3.tabBarItem.title = @"recommend";
    viewController3.tabBarItem.image = [UIImage imageNamed:@"file path5"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed:@"file path6"];
    
    UIViewController *viewController4 = [[UIViewController alloc]init];
    viewController4.view.backgroundColor = [UIColor greenColor];
    viewController4.tabBarItem.title = @"me";
    viewController4.tabBarItem.image = [UIImage imageNamed:@"file path7"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed:@"file path8"];
    
    //add 4 view controllers to tabbar controller
    [tabbarController setViewControllers:@[navigationController, viewController2, viewController3, viewController4]];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabbarController; //set tabbarController as default (no longer a single view)
    [self.window makeKeyAndVisible];
    
    
    
    
    
    return YES;
}




@end
