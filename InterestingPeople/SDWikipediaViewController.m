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

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"some value is gay!!  :%@", self.someValue);

}
- (void)viewDidLoad
{
//    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.backButtonForWikipediaview.layer.cornerRadius = 8.0f;
    
    NSLog(@"some value is gay!!  :%@", self.someValue);

 //   int b = [view2 variableView2];
    
    NSString *nameforurl = self.namestring;
    
    NSLog(@"got the name !!! Bookkaaa :%@",nameforurl);
    
    
    // urls shouldnt contain any spaces.. replace it with %20
    NSString *fullURL = [[NSString stringWithFormat: @"http://en.wikipedia.org/wiki/%@", self.nameForURL] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    
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
