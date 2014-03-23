//
//  SDWikipediaViewController.h
//  InterestingPeople
//
//  Created by sanket on 31/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"
#import "SDViewByShakeViewController.h"

@interface SDWikipediaViewController : SDViewByShakeViewController

@property (weak, nonatomic) IBOutlet UIButton *backButtonForWikipediaview;
@property (strong, nonatomic) IBOutlet UIWebView *shakewikiview;


@property (strong, nonatomic) NSString *nameForURL;


-(IBAction)goBack:(id)sender; 

@end
