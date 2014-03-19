//
//  SDViewBySwipeViewController.m
//  InterestingPeople
//
//  Created by sanket on 7/02/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewBySwipeViewController.h"

@interface SDViewBySwipeViewController ()

@end

@implementation SDViewBySwipeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)swiped: (UIEventSubtype)swipe withEvent:(UIEvent *)event
{
    if (swipe == UISwipeGestureRecognizerDirectionRight) {
        [self changeProfile];
    }
}

- (IBAction)showGestureForSwipeRecognizer:(UISwipeGestureRecognizer *)recognizer
{
    [self changeProfile];
    
}

-(IBAction)goback:(id)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}

-(void)ChangeProfileOnSwipe:(UISwipeGestureRecognizer *)sender
{
    
    [self changeProfile];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.swipebackButton.layer.cornerRadius = 8.0f;
    self.swipeWiki.layer.cornerRadius = 8.0f;
    
    
    UISwipeGestureRecognizer * swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeProfile)];
    swiperight.direction=UISwipeGestureRecognizerDirectionRight;

    [self.view addGestureRecognizer:swiperight];
    
     [self changeProfile];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
