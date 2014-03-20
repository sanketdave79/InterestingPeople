//
//  SDWikipediaViewController.m
//  InterestingPeople
//
//  Created by sanket on 31/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDWikipediaViewController.h"


@interface SDWikipediaViewController ()


@end


@implementation SDWikipediaViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.backButtonForWikipediaview.layer.cornerRadius = 8.0f;
    
    SDViewController *cls_b = [[SDViewController alloc] initWithNibName:@"SDViewController_nib" bundle:nil];
    
    
    NSString *nameforurl = cls_b.someValue;
    NSLog(@"%@",nameforurl);
    
    NSString *fullURL = [NSString stringWithFormat: @"http://www.wikipedia.org/w/wiki.phtml?search=%@", nameforurl];
    
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_shakewikiview loadRequest:requestObj];
    

}

-(IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
