//
//  SDViewByClickViewController.h
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewByClickViewController : SDViewController

@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@property (weak, nonatomic) IBOutlet UIButton *wikiClick;


-(IBAction)goBack:(id)sender;



@end
