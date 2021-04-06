//
//  RecommendViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/6.
//

#import "RecommendViewController.h"

@interface RecommendViewController () <UIScrollViewDelegate>

@end

@implementation RecommendViewController

- (instancetype) init{
    self = [super init];
    if(self){
        self.view.backgroundColor = [UIColor yellowColor];
        self.tabBarItem.title = @"recommend";
        self.tabBarItem.image = [UIImage imageNamed:@"file path5"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"file path6"];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width*3, self.view.bounds.size.height);
    
    
    NSArray *colors = @[[UIColor redColor], [UIColor systemTealColor], [UIColor yellowColor]];
    
    for(int i=0; i<3; i++){
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width*i, 0, scrollView.bounds.size.width, scrollView.bounds.size.height)];
        view.backgroundColor = [colors objectAtIndex:i];
        [scrollView addSubview: view];
        
    }
    //enable pages
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    
    [self.view addSubview:scrollView];
}

//UIScrollViewDelegate optional methods
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"offset: [%@, %@]", @(scrollView.contentOffset.x),  @(scrollView.contentOffset.y));
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
//    NSLog(@"will begin dragging");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
//    NSLog(@"did end dragging");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
//    NSLog(@"will begin decelerating");
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    NSLog(@"did end decelerating");
}


@end
