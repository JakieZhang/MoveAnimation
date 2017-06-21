//
//  ViewController.m
//  test
//
//  Created by idaoben idaoben on 2017/6/21.
//  Copyright © 2017年 idaoben. All rights reserved.
//

#import "ViewController.h"
#import "Zomb.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //方法一：
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(300, 300, 50, 80)];
    [self.view addSubview:imageView];
    
    UIImage *img = [UIImage imageNamed:@"zomb_0"];
    NSMutableArray *animation = [NSMutableArray array];
    float width = img.size.width/8;
    for (NSInteger i = 0; i< 8; i++) {
        CGImageRef subImg = CGImageCreateWithImageInRect(img.CGImage, CGRectMake(i*width, 0, width, img.size.height));
        [animation addObject:[UIImage imageWithCGImage:subImg]];
    }
    
    imageView.animationImages = animation;
    imageView.animationDuration = 1;
    imageView.animationRepeatCount = 0;
    [imageView startAnimating];
    
    [NSTimer scheduledTimerWithTimeInterval:.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        imageView.center = CGPointMake(imageView.center.x-2, imageView.center.y-2);
    }];
    //方法二：
    Zomb *zzzz = [[Zomb alloc]initWithFrame:CGRectMake(200, 200, 50, 80)];
    [self.view addSubview:zzzz];
    [NSTimer scheduledTimerWithTimeInterval:.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        zzzz.center = CGPointMake(zzzz.center.x-2, zzzz.center.y);
    }];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
