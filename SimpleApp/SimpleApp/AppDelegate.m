//
//  AppDelegate.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "AppDelegate.h"
#import "NewsViewController.h" //include a UITableView
#import "VideoViewController.h" //include a UICollectionView
#import "RecommendViewController.h" //include a UIScrollView
#import "MeViewController.h" //include a UIView (with an alert)

@interface AppDelegate ()<UITabBarControllerDelegate> //@protovol <UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //create 4 view controllers
    NewsViewController *newsViewController = [[NewsViewController alloc] init];
    VideoViewController *videoViewController = [[VideoViewController alloc]init];
    RecommendViewController *recommendViewController = [[RecommendViewController alloc]init];
    MeViewController *meViewController = [[MeViewController alloc]init];
    
    //create a tabbar controller
    UITabBarController *tabbarController  = [[UITabBarController alloc] init];
    
    //add 4 view controllers to tabbar controller
    [tabbarController setViewControllers:@[newsViewController, videoViewController, recommendViewController, meViewController]];
    
    
    //@protovol <UITabBarControllerDelegate>
    tabbarController.delegate = self;
    
    //init navigation controller with tabbar controller (nc needs a root view)
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    
    //set nc to window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


//@protovol <UITabBarControllerDelegate>
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"select tab bar");
}



@end
