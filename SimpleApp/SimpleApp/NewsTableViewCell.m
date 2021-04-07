//
//  NewsTableViewCell.m
//  SimpleApp
//
//  Created by wangyuqing on 2021/4/7.
//

#import "NewsTableViewCell.h"

@interface NewsTableViewCell()

@property(nonatomic, strong, readwrite) UILabel *titleLabel;
@property(nonatomic, strong, readwrite) UILabel *sourceLabel;
@property(nonatomic, strong, readwrite) UILabel *commentLabel;
@property(nonatomic, strong, readwrite) UILabel *timeLabel;

@property(nonatomic, strong, readwrite) UIImageView *newsImageView;

@property(nonatomic, strong, readwrite) UIButton *deleteButton;


@end

@implementation NewsTableViewCell

//init our own cell style
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 200, 50)];
        self.titleLabel.backgroundColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont systemFontOfSize:16];
        self.titleLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:self.titleLabel];
        
        
        self.sourceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 20)];
        self.sourceLabel.backgroundColor = [UIColor whiteColor];
        self.sourceLabel.font = [UIFont systemFontOfSize:12];
        self.sourceLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview: self.sourceLabel];
        
        
        self.commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 50, 20)];
        self.commentLabel.backgroundColor = [UIColor whiteColor];
        self.commentLabel.font = [UIFont systemFontOfSize:12];
        self.commentLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:self.commentLabel];
        
        
        self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 80, 50, 20)];
        self.timeLabel.backgroundColor = [UIColor whiteColor];
        self.timeLabel.font = [UIFont systemFontOfSize:12];
        self.timeLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:self.timeLabel];
        
        
        self.newsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(290, 15, 70, 70)];
        self.newsImageView.backgroundColor = [UIColor grayColor];
        self.newsImageView.contentMode = UIViewContentModeScaleAspectFit; //contentMode is a UIView property
        [self.contentView addSubview:self.newsImageView];
        
        
        self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(270, 74, 10, 10)];
        [self.deleteButton setTitle:@"x" forState:UIControlStateNormal];
        [self.deleteButton setTitle:@"v" forState:UIControlStateHighlighted];
        //target-action
        [self.deleteButton addTarget:self action:@selector(deleteButtonClick) forControlEvents:UIControlEventTouchUpInside];
        self.deleteButton.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:self.deleteButton];
        
    }
    
    return self;
}


//reveive data, show data
- (void) layoutTableViewCell{
    
    self.titleLabel.text = @"Covid symptoms: Is it a cold, flu or coronavirus?";
    self.titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
    
    self.sourceLabel.text = @"BBC News";
    [self.sourceLabel sizeToFit];
      
    self.commentLabel.text = @"627 comments";
    [self.commentLabel sizeToFit];
    self.commentLabel.frame = CGRectMake(self.sourceLabel.frame.origin.x+ self.sourceLabel.frame.size.width + 15, self.commentLabel.frame.origin.y, self.commentLabel.frame.size.width, self.commentLabel.frame.size.height);
    
    self.timeLabel.text = @"3 mins ago";
    [self.timeLabel sizeToFit];
    self.timeLabel.frame = CGRectMake(self.commentLabel.frame.origin.x +self.commentLabel.frame.size.width +15, self.timeLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
    
    self.newsImageView.image = [UIImage imageNamed:@"images.bundle/covid.png"];
}

- (void) deleteButtonClick{
    NSLog(@"Delete Button Clicked");
}

@end
