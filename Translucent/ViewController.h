//
//  ViewController.h
//  Translucent
//
//  Created by Эдуард Пятницын on 11.09.14.
//  Copyright (c) 2014 com.EduardPyatnitsyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *translucentView;

-(UIImage *)convertViewToImage;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end
