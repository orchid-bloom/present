//
//  ViewController.m
//  PresentDiss
//
//  Created by tianXin on 16/3/7.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, self.view.frame.size.height - 40)];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"IMG_0344" ofType:@"PNG"];
    imageView.image = [UIImage imageWithContentsOfFile:path];
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
    [imageView addGestureRecognizer:tap];
    [self.view addSubview:imageView];

}

- (void)tapClick{
    DetailViewController *vc = [[DetailViewController alloc] init];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


@end
