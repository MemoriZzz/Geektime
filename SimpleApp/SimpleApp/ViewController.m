//
//  ViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/5.
//

#import "ViewController.h"


@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.view.backgroundColor = [UIColor whiteColor]; //set view controller color
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds]; // create a tableview whose size is as same as view;
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
