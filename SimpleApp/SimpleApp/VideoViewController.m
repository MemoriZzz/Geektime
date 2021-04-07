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
        self.tabBarItem.title = @"video";
        self.tabBarItem.image = [UIImage imageNamed:@"file path3"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"file path4"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.itemSize = CGSizeMake((self.view.frame.size.width-10)/2, 300);
    
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    collectionView.backgroundColor = [UIColor colorWithRed:156/255.0 green:195/255.0 blue:154/255.0 alpha:1.0];//matcha
    
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
    cell.backgroundColor = [UIColor colorWithRed:156/255.0 green:186/255.0 blue:154/255.0 alpha:1.0];//darker matcha
    return cell;
}

//UICollectionViewDelegate optional methods
//...


//UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.item %3 ==0){
        return CGSizeMake(self.view.frame.size.width, 100);
    }else{
        return CGSizeMake((self.view.frame.size.width-10)/2, 300);
    }
}


@end
