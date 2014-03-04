//
//  SDSettingsViewController.m
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//


#import "SDSettingsViewController.h"
#import "SDViewController.h"

@interface SDSettingsViewController ()


@end

@implementation SDSettingsViewController

@synthesize theswitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)setCategoryStatus:(id)sender{
    
    
    
   
    
    //NSLog(@"0Category status array after on : %@",categoryStatus);
    
    
    
    
    if (theswitch.isOn) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"category"];
//        if([categoryStatus count] == 0){
//            
//            categoryStatus = [NSMutableArray arrayWithObjects:@"active", @"active", nil];
//             NSLog(@"1Category status array after on : %@",categoryStatus);
//            
//        }
//       
//        else{
        
        
        [categoryStatus replaceObjectAtIndex:0 withObject:@"active"];
        [categoryStatus replaceObjectAtIndex:1 withObject:@"active"];
       // NSLog(@"2Category status array after on : %@",categoryStatus);
//        }
        
        
    }
    
    else {
        
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"category"];

//        
//        if([categoryStatus count] == 0){
//            
//            categoryStatus = [NSMutableArray arrayWithObjects:@"inactive", @"inactive", nil];
//            NSLog(@"3Category status array after on : %@",categoryStatus);
//
//        }
//        
//        else{
        
            
            [categoryStatus replaceObjectAtIndex:0 withObject:@"inactive"];
            [categoryStatus replaceObjectAtIndex:1 withObject:@"inactive"];
          //  NSLog(@"4Category status array after on : %@",categoryStatus);
//        }
        
    }

    [[NSUserDefaults standardUserDefaults] synchronize];
    
}



-(void)labelStriker: (UILabel *) label withStatus: (BOOL) isActive{
    
    
    if (isActive) {
        NSNumber *strikeSize = [NSNumber numberWithInt:2];
        
        NSDictionary *strikeThroughAttribute = [NSDictionary dictionaryWithObject:strikeSize
                                                                           forKey:NSStrikethroughStyleAttributeName];
        
        NSAttributedString* strikeThroughText = [[NSAttributedString alloc] initWithString:label.text attributes:strikeThroughAttribute];
        
        label.attributedText = strikeThroughText;
    }
    else {
        NSNumber *strikeSize = [NSNumber numberWithInt:0];
        
        NSDictionary *strikeThroughAttribute = [NSDictionary dictionaryWithObject:strikeSize
                                                                           forKey:NSStrikethroughStyleAttributeName];
        
        NSAttributedString* strikeThroughText = [[NSAttributedString alloc] initWithString:label.text attributes:strikeThroughAttribute];
        
        label.attributedText = strikeThroughText;
    }
    
    
    
    
    
    

    
}

-(void)labelStrikeRemover{


    
}


- (IBAction)categoryStatusChanger:(UISwitch *)sender {
    
   
    
    
    
    
    
    if (sender.tag == 1000) {
        if (sender.isOn) {
            [categoryStatus replaceObjectAtIndex:0 withObject:@"active"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"sport"];
           

        } else {
            [categoryStatus replaceObjectAtIndex:0 withObject:@"inactive"];
            [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"sport"];

        }
    }
    
    
    else if (sender.tag == 10001) {
        
        if (sender.isOn) {
            [categoryStatus replaceObjectAtIndex:1 withObject:@"active"];
        }
        
        else {
            [categoryStatus replaceObjectAtIndex:1 withObject:@"inactive"];
            
        }

        
    }
    
    else if (sender.tag == 1){
        
        if (sender.isOn) {
            [categoryStatus replaceObjectAtIndex:0 withObject:@"active"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"leaders"];
            NSLog(@"Leaders Category ON , Category status array after on : %@",categoryStatus);
            
           
        }
        
        else {
            [categoryStatus replaceObjectAtIndex:0 withObject:@"inactive"];
            [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"leaders"];
            NSLog(@"Leaders Category OFF , Category status array after on : %@",categoryStatus);
            
        }

        
    }
    
    else if (sender.tag == 2){
        
        if (sender.isOn) {
            [categoryStatus replaceObjectAtIndex:1 withObject:@"active"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"actors"];
             NSLog(@"Actors s Category ON , Category status array after on : %@",categoryStatus);
            [self labelStriker:self.actorsLabel withStatus:NO];
        }
        
        if (!sender.isOn)
            {
            [categoryStatus replaceObjectAtIndex:1 withObject:@"inactive"];
            [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"actors"];
                [self labelStriker:self.actorsLabel withStatus:YES];

            NSLog(@"Actors s Category OFF , Category status array after on : %@",categoryStatus);

            
        }
        
        
    }
    
    [[NSUserDefaults standardUserDefaults] synchronize];

    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"category"]==YES)
        theswitch.on = YES;
    else theswitch.on = NO;
    
//    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"leaders"]==YES) {
//        UISwitch *sw in self.view.subviews
//    }
    
    
    for (UISwitch *sw in self.view.subviews) {
//        if (sw.tag  == 1000) {
//            sw.on = YES;
//        }
//        
//        if (sw.tag == 1001) {
//             sw.on = YES;
//
//        }
        
        if (sw.tag  == 1) {
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"leaders"]==YES)
            {
                sw.on = YES;
            }
            else
            {
               sw.on = NO;
            }
        }
        
        if (sw.tag == 2) {
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"actors"]==YES)
                
            { sw.on = YES;
                
//                [self labelStrikeRemover];

                [self labelStriker:self.actorsLabel withStatus:NO];

            
            }
            
            else
                
            { sw.on = NO;
//                [self labelStriker];
                [self labelStriker:self.actorsLabel withStatus:YES];

            }
            
        }
        
    }
    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
