//
//  ViewController.m
//  Translucent
//
//  Created by Эдуард Пятницын on 11.09.14.
//  Copyright (c) 2014 com.EduardPyatnitsyn. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.translucentView.alpha = 0.0f;
    UIImage* imageOfUnderlyingView = [self convertViewToImage];
    self.translucentView.alpha = 1.0f;
    imageOfUnderlyingView = [imageOfUnderlyingView applyBlurWithRadius:20
                                                             tintColor:[UIColor colorWithWhite:1.0 alpha:0.8]
                                                 saturationDeltaFactor:1.3
                                                             maskImage:nil];
    
    self.translucentView.backgroundColor = [UIColor clearColor];
    UIImageView* backView = [[UIImageView alloc] initWithFrame:self.translucentView.frame];
    backView.image = imageOfUnderlyingView;
    [self.translucentView insertSubview:backView atIndex:0];

}

-(UIImage *)convertViewToImage
{
    
    UIGraphicsBeginImageContext(self.translucentView.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}



@end
