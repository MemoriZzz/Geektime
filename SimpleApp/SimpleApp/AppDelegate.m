//
//  AppDelegate.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "AppDelegate.h"
#import "NewsViewController.h"
#import "VideoViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate> //@protovol <UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //create 4 view controller and set their background colors.
    NewsViewController *newsViewController = [[NewsViewController alloc] init];
    VideoViewController *videoViewController = [[VideoViewController alloc]init];

    
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
    [tabbarController setViewControllers:@[newsViewController, videoViewController, viewController3, viewController4]];
    
    
    //@protovol <UITabBarControllerDelegate>
    tabbarController.delegate = self;
    
    //init navigation controller with tabbar controller (nc needs a root view)
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    //set nc to window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController; //set tabbarController as default (no longer a single view)
    [self.window makeKeyAndVisible];
    
    
    
    
    
    return YES;
}


//@protovol <UITabBarControllerDelegate>
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"did select");
}



@end
