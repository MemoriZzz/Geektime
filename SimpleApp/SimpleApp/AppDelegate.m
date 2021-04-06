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

    //create 4 view controller and set their background colors.
    ViewController *viewController = [[ViewController alloc] init]; //viewController has its own contents
    viewController.view.backgroundColor = [UIColor systemRedColor];
    viewController.tabBarItem.title = @"news";
    viewController.tabBarItem.image = [UIImage imageNamed:@"file path1"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"file path2"];
    
    
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
    
    //create a tabbar controller
    UITabBarController *tabbarController  = [[UITabBarController alloc] init];
    
    //add 4 view controllers to tabbar controller
    [tabbarController setViewControllers:@[viewController, viewController2, viewController3, viewController4]];    
    
    //init navigation controller with tabbar controller (nc needs a root view)
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    //set nc to window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController; //set tabbarController as default (no longer a single view)
    [self.window makeKeyAndVisible];
    
    
    
    
    
    return YES;
}




@end
