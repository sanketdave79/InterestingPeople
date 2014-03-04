//
//  SDMoreAppsCell.h
//  InterestingPeople
//
//  Created by sanket on 10/02/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDMoreAppsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *appImage;
@property (weak, nonatomic) IBOutlet UILabel *appDescription;
@property (weak, nonatomic) IBOutlet UILabel *appName;
@property (weak, nonatomic) IBOutlet UILabel *appPrice;

@end
