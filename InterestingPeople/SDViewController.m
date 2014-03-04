//
//  SDViewController.m
//  InterestingPeople
//
//  Created by sanket on 29/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//


//////////   Wikipedia search query link http://www.wikipedia.org/w/wiki.phtml?search=



#import "SDViewController.h"

@interface SDViewController () {
    NSArray *names, *countries ,*imagename, *description,  *age, *leaders, *actors;
    
   
   
}

@end



@implementation SDViewController

- (void)viewDidLoad
{

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Using Custom Fonts";
    label.font = [UIFont fontWithName:@"Ketchum" size:20];
    [self.view addSubview:label];
    [UIView animateWithDuration:4.0
                          delay:0.0
                        options: UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.testLabel.alpha = 1.0;
                     }
                     completion:^(BOOL finished){
                      
                         self.testLabel.frame = CGRectMake(200, 200, 200, 200);
                      
                     }];
    
    
    
    if (self.view.frame.size.height == 568) {
        // put buttons down 60 pixels
     
        NSLog(@"OKOK");
        self.infoButton.frame = CGRectMake(10, 10, 10,10);
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
     //categoryStatus = [[NSMutableArray alloc] initWithObjects:nil count:0];
    
    //categoryStatus = [NSMutableArray arrayWithObjects:@"active", @"active", nil];
    
       
    if ([categoryStatus count] == 0) {
        
        NSLog(@"category count is 0");
        
       categoryStatus = [NSMutableArray arrayWithObjects:@"active", @"active", nil];
        [self initializer];
//        [self returningRandomlyChosenCategory];
//        [self returningRandomlyChosenProfile];

       
    }
    
    else{
        
        [self initializer];
        [self returningRandomlyChosenCategory];
        [self returningRandomlyChosenProfile];
        
        
        
    }

    
    

    
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"leaders"]) {
        NSLog(@"category true");
    }
    else {
        NSLog(@"category false");
    }
}

- (void) initializer {
    
    
    
    
   categories = [[NSMutableArray alloc] init];
    

    
  //  categoryStatus = [NSMutableArray arrayWithObjects:@"active", @"active", nil];
    
    
  
    
    // Leaders Data
    
    names = [NSArray arrayWithObjects:@"leader1", @"leader2", @"leader3", nil];
    countries = [NSArray arrayWithObjects:@"Tur", @"ind", @"zim", nil];
    age = [NSArray arrayWithObjects:@"27",@"26",@"21",nil];
    imagename = [NSArray arrayWithObjects:@"gandhi.png",@"gandhi.png",@"gandhi.png",nil];
    description = [NSArray arrayWithObjects:@"This is description",@"This is description",@"This is description",nil];
    
    leaders = [NSArray arrayWithObjects:names, age, imagename, description, countries, nil];
    
    NSLog(@"value at category status 0 is %@",categoryStatus[0]);
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"leaders"]) {
        
//    if ([categoryStatus[0] isEqualToString:@"active"]) {
        [categories addObject:leaders];
         NSLog(@"this is the categories array after checking categories status %@",categories);
    }
    
     // Actors Data
    
    names = [NSArray arrayWithObjects:@"Actor1", @"Actor2", @"Actor3", nil];
    countries = [NSArray arrayWithObjects:@"Tur", @"ind", @"zim", nil];
    age = [NSArray arrayWithObjects:@"27",@"26",@"21",nil];
    imagename = [NSArray arrayWithObjects:@"gandhi.png",@"gandhi.png",@"gandhi.png",nil];
    description = [NSArray arrayWithObjects:@"This is description",@"This is description",@"This is description",nil];
    
    actors = [NSArray arrayWithObjects:names, age, imagename, description, countries, nil];
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"actors"]) {
        NSLog(@"OK actors active");
//    if ([categoryStatus[1] isEqualToString:@"active"]) {
        [categories addObject:actors];
    }
    
   
    
    if ([categories count] == 0) {
        NSLog(@"NO Categories arrays addedd !!! ");
    }
    
}



- (NSMutableArray *) returningRandomlyChosenCategory
{
    
     if ([categories count] == 0) {
         NSLog(@"No category exist to choose a random number from !!! ");
         return nil;
    }
    
     else{
    int randomlychosencategorynumber = arc4random() % [categories count];
    
    //NSLog(@"Chosen Category Number is %d",randomlychosencategorynumber);
    
   // NSLog(@"Chosen Category array  is %@",categories[randomlychosencategorynumber]);
    
       
   //  NSLog(@"Number of profiles in category are  %d",[categories[randomlychosencategorynumber][0] count]);
    
    return categories[randomlychosencategorynumber];
     }
    
    
    
}

- (NSMutableArray *) returningRandomlyChosenProfile
{
    NSMutableArray *chosenprofilearray;
    
    int randomlychosenprofilenumber = arc4random() % [[self returningRandomlyChosenCategory][0] count];
    
    NSLog(@"and Chosen profile is as follows:  %@ %@ %@ %@ %@", [self returningRandomlyChosenCategory][0][randomlychosenprofilenumber],[self returningRandomlyChosenCategory][1][randomlychosenprofilenumber], [self returningRandomlyChosenCategory][2][randomlychosenprofilenumber],[self returningRandomlyChosenCategory][3][randomlychosenprofilenumber], [self returningRandomlyChosenCategory][4][randomlychosenprofilenumber]);
    
    chosenprofilearray = [NSMutableArray arrayWithObjects:[self returningRandomlyChosenCategory][0][randomlychosenprofilenumber],[self returningRandomlyChosenCategory][1][randomlychosenprofilenumber], [self returningRandomlyChosenCategory][2][randomlychosenprofilenumber],[self returningRandomlyChosenCategory][3][randomlychosenprofilenumber], [self returningRandomlyChosenCategory][4][randomlychosenprofilenumber], nil];
    
    
    return chosenprofilearray;

    
}

-(IBAction) changeProfile

{
     NSArray *tempArr =[self returningRandomlyChosenProfile];
    NSLog(@"temp arr : %@", tempArr);
    self.imageView.image = [UIImage imageNamed:tempArr[2]];
    self.ageLabel.text = tempArr[1];
    self.countryLabel.text = tempArr[4];
    self.descriptionTextView.text = tempArr[3];
    
    
    
    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
