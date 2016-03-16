//
//  TXModelTransition.h
//  PresentDiss
//
//  Created by tianXin on 16/3/7.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



typedef NS_ENUM(NSInteger,TXTransitionType){
    kTXModelTransitionPresent = 1,
    kTXmodelTransitionDiss = 2
};

@interface TXModelTransition : NSObject<UIViewControllerAnimatedTransitioning>

/**
 *  田鑫
 *
 *  @param type          动画类型
 *  @param duration      动画时长
 *  @param presentHeight 弹出呈现的高度
 *  @param scale         fromVC的绽放系数
 *
 *  @return nil
 */


+ (TXModelTransition *)transitionWithType:(TXTransitionType)type
                                  duration:(NSTimeInterval)duration
                             presentHeight:(CGFloat)presentHeight
                                     scale:(CGPoint)scale;


@end
