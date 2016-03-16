//
//  DetailViewController.m
//  PresentDiss
//
//  Created by tianXin on 16/3/7.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "DetailViewController.h"
#import "TXModelTransition.h"


@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"IMG_0342" ofType:@"PNG"];
    imageView.image = [UIImage imageWithContentsOfFile:path];
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
    [imageView addGestureRecognizer:tap];
    [self.view addSubview:imageView];
    
    // 配置一下代理防呈现样式为自定义
    self.transitioningDelegate = self;
    self.modalPresentationStyle =  UIModalPresentationCustom;
}




#pragma mark - UIViewControllerTransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [TXModelTransition transitionWithType:kTXModelTransitionPresent duration:0.5 presentHeight:350 scale:CGPointMake(0.9, 0.9)];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [TXModelTransition transitionWithType:kTXmodelTransitionDiss duration:0.25 presentHeight:350 scale:CGPointMake(0.9, 0.9)];
}

#pragma mark - Private


- (void)tapClick{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
