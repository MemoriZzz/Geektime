//
//  NewsViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "NewsViewController.h"


@interface NewsViewController () <UITableViewDataSource>

@end

@implementation NewsViewController

- (instancetype) init{
    self = [super init];
    if(self){
        self.tabBarItem.title = @"news";
        self.tabBarItem.image = [UIImage imageNamed:@"file path1"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"file path2"];
    }
    return self;
}

- (void)viewDidLoad {

    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds]; // create a tableview whose size is as same as view;
    tableView.backgroundColor = [UIColor systemRedColor];
    tableView.dataSource = self; //use viewController to implement data source functions
    [self.view addSubview:tableView];
    
    

}
//UITableViewDataSource required method 1
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

//UITableViewDataSource required method 2
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    cell.textLabel.text = @"MAIN HEADING";
    cell.detailTextLabel.text = @"SUB HEADING";
    cell.imageView.image = [UIImage imageNamed:@"image/path"];
    
    
    return cell;
}


@end
