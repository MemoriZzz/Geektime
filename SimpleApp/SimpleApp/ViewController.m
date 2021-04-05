//
//  ViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "ViewController.h"

@interface TestView : UIView

@end

@implementation TestView

// override init
- (instancetype) init{
    self = [super init];
    if(self){
        
    }
    //Breakpoint here:
    return self;
}

// methods about life cycle
- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    //Breakpoint here:
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview{
    //Breakpoint here:
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    //Breakpoint here:
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    
    [super didMoveToWindow];
}

@end



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    //Breakpoint here:
    TestView *myView = [[TestView alloc] init];
    myView.backgroundColor = [UIColor redColor];
    myView.frame = CGRectMake(100, 100, 100, 100);
    //Breakpoint here:
    [self.view addSubview:myView];

}


@end
