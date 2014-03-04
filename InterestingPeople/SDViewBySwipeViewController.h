//
//  SDViewBySwipeViewController.h
//  InterestingPeople
//
//  Created by sanket on 7/02/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewBySwipeViewController : SDViewController

@property (weak, nonatomic) IBOutlet UIButton *swipebackButton;

-(IBAction)goback:(id)sender;
- (void)swiped: (UIEventSubtype)swipe withEvent:(UIEvent *)event;
-(void)ChangeProfileOnSwipe:(UISwipeGestureRecognizer *)sender;

@end
