//
//  SDViewController.h
//  InterestingPeople
//
//  Created by sanket on 29/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDViewController : UIViewController {
    NSMutableArray *categories, *RandomCategory , *categoryStatus;

}


@property (weak, nonatomic) IBOutlet UIButton *clickButton;

 


@property (weak, nonatomic) IBOutlet UIButton *shakeButton;

@property (weak, nonatomic) IBOutlet UIButton *settingsButton;

@property (weak, nonatomic) IBOutlet UIButton *infoButton;

@property (weak, nonatomic) IBOutlet UIButton *moreappButton;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@property (nonatomic, retain) IBOutlet UISwitch *theswitch;


- (void) initializer;
- (IBAction) changeProfile;
- (NSMutableArray *) returningRandomlyChosenCategory;
- (NSMutableArray *) returningRandomlyChosenProfile;



@end
