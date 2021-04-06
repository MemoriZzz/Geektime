//
//  NewsViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "NewsViewController.h"


@interface NewsViewController () <UITableViewDataSource, UITableViewDelegate>

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
    
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];
    
    

}
//UITableViewDataSource required methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    cell.textLabel.text = [NSString localizedStringWithFormat: @"MAIN HEADING - %@", @(indexPath.row)];
    cell.detailTextLabel.text = @"SUB HEADING";
    cell.imageView.image = [UIImage imageNamed:@"image/path"];
    
    return cell;
}

//UITableViewDelegate optional methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *somenews = [[UIViewController alloc] init];
    somenews.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    somenews.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:somenews animated:NO];
}


@end
