//
//  SDViewByShakeViewController.m
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewByShakeViewController.h"
#import "SDViewController.h"

@interface SDViewByShakeViewController (){
    NSTimer *timer;
}

@end

@implementation SDViewByShakeViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self changeProfile];
    }
}


- (IBAction)acivateChangeProfileByShake:(id)sender {
    
    [self changeProfile];
    [timer invalidate];
    
    }

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
    
    self.backButtonForShakeView.layer.cornerRadius = 8.0f;
    [self changeProfile];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
