//
//  SDViewByShakeViewController.m
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewByShakeViewController.h"
#import "SDViewController.h"
#import "SDWikipediaViewController.h"

@interface SDViewByShakeViewController (){
    NSTimer *timer;
}

@end

@implementation SDViewByShakeViewController


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

    NSLog(@"some value here aaa  : %@", self.someValue);

	// Do any additional setup after loading the view.
    
    self.backButtonForShakeView.layer.cornerRadius = 8.0f;
    self.wikiShake.layer.cornerRadius = 8.0f;
    [self changeProfile];
    
    NSLog(@"some value here : %@", self.someValue);

    
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"aa  name :%@", self.someValue);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SDWikipediaViewController *wiki = [segue destinationViewController];
    wiki.nameForURL = self.someValue;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
