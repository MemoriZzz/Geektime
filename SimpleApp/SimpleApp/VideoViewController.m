//
//  VideoViewController.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/6.
//

#import "VideoViewController.h"

@interface VideoViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation VideoViewController

- (instancetype) init{
    self = [super init];
    if(self){
        self.view.backgroundColor = [UIColor orangeColor];
        self.tabBarItem.title = @"video";
        self.tabBarItem.image = [UIImage imageNamed:@"file path3"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"file path4"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    collectionView.backgroundColor = [UIColor orangeColor];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    //register
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    
    [self.view addSubview:collectionView];
    
}

//UICollectionViewDataSource required methods
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor systemGrayColor];
    return cell;
}

//UICollectionViewDelegate optional methods
//...


@end
