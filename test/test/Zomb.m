//
//  Zomb.m
//  test
//
//  Created by idaoben idaoben on 2017/6/21.
//  Copyright © 2017年 idaoben. All rights reserved.
//

#import "Zomb.h"

@implementation Zomb

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *img = [UIImage imageNamed:@"zomb_0"];
        NSMutableArray *arr = [NSMutableArray array];
        float width = img.size.width/8;
        for (NSInteger i = 0; i<8; i++) {
            CGImageRef imageF = CGImageCreateWithImageInRect(img.CGImage, CGRectMake(i*width,0,width, img.size.height));
            [arr addObject:[UIImage imageWithCGImage:imageF]];
        }
        self.animationRepeatCount = 0;
        self.animationDuration = 1;
        self.animationImages = arr;
        [self startAnimating];
    }
    return self;
}

@end
