//
//  ViewController.m
//  LottieOCDemo
//
//  Created by Jason_hzb on 2018/6/7.
//  Copyright © 2018年 Jason_hzb. All rights reserved.
//

#import "ViewController.h"
#import <Lottie/Lottie.h>

@interface ViewController ()

@property(nonatomic,strong)LOTAnimationView *launchAnimation;

@end

@implementation ViewController

/**
 * 免费json动画网站：https://www.lottiefiles.com
 * url加载需要时间
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    _launchAnimation = [[LOTAnimationView alloc] initWithContentsOfURL:[NSURL URLWithString:@"https://www.lottiefiles.com/storage/datafiles/w1J6yNaftdTVudX/data.json"]];
    _launchAnimation =[LOTAnimationView animationNamed:@"servishero_loading"];//实例化对象
    _launchAnimation.cacheEnable =NO;
    _launchAnimation.frame =CGRectMake(0, 0, 400, 400);//动画范围
    _launchAnimation.center = self.view.center;
    _launchAnimation.contentMode =UIViewContentModeScaleToFill;
    _launchAnimation.animationSpeed =0.5;//动画时间
    _launchAnimation.loopAnimation =YES;//是否循环动画
    [_launchAnimation play];//开始动画
    [self.view addSubview:_launchAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
