//
//  ViewController.m
//  OauthIOS
//
//  Created by Rajeev Kumar on 12/03/14.
//  Copyright (c) 2014 rajeev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) BOOL imageIsHighlighted;
@property (nonatomic, strong) NSArray *images;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.images = @[[UIImage imageNamed:@"079aaac.jpg"], [UIImage imageNamed:@"IMG_2902.JPG"],
                    [UIImage imageNamed:@"DSC_0303.JPG"]];
    
    self.imageView.animationImages = self.images;
    self.imageView.animationDuration = 1.0f;
    
    UITouch *touch = [touches anyObject];
    
    if ([touch view] == self.imageView)
    {
        if (!self.imageIsHighlighted) {
//            self.imageView.highlighted = YES;
             [self.imageView startAnimating];
            self.imageIsHighlighted = YES;
        } else
        {
//            self.imageView.highlighted = NO;
            [self.imageView stopAnimating];
            self.imageIsHighlighted = NO;
        }
    }
}

@end
