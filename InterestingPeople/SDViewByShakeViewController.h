//
//  SDViewByShakeViewController.h
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewByShakeViewController : SDViewController

@property (weak, nonatomic) IBOutlet UIButton *backButtonForShakeView;

@property (weak, nonatomic) IBOutlet UIButton *wikiShake;

-(IBAction)goBack:(id)sender;

@end