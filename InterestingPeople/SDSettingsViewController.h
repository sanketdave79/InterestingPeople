//
//  SDSettingsViewController.h
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"

@interface SDSettingsViewController : SDViewController

@property (weak, nonatomic) IBOutlet UILabel *leadersLabel;
@property (weak, nonatomic) IBOutlet UILabel *actorsLabel;
@property (weak, nonatomic) IBOutlet UILabel *sportsmanLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistsLabel;
@property (weak, nonatomic) IBOutlet UILabel *businessmanLabel;


-(IBAction)setCategoryStatus:(id)sender;

- (IBAction)categoryStatusChanger:(UISwitch *)sender;

@end