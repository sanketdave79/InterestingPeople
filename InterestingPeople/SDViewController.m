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
    NSArray *names, *countries ,*imagename, *description,  *age, *leaders, *actors, *sportsman, *businessman, *artists;
    
   
   
}

@end



@implementation SDViewController



- (void)viewDidLoad
{
   
    //[self hidenavigationbar];
    self.byclick.layer.cornerRadius = 8.0f;
    self.byshake.layer.cornerRadius = 8.0f;
    self.byswipe.layer.cornerRadius = 8.0f;
    self.moreappButton.layer.cornerRadius = 8.0f;
    self.infoButton.layer.cornerRadius = 8.0f;
    self.settingsButton.layer.cornerRadius = 8.0f;
    
   
    

//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
//    label.textAlignment = NSTextAlignmentCenter;
//    label.text = @"Interesting People Lite";
//    label.font = [UIFont fontWithName:@"Ketchum" size:20];
//    [self.view addSubview:label];
//    [UIView animateWithDuration:4.0
//                          delay:0.0
//                        options: UIViewAnimationOptionCurveEaseInOut
//                     animations:^{
//                         self.testLabel.alpha = 1.0;
//                     }
//                     completion:^(BOOL finished){
//                         
//                         self.testLabel.frame = CGRectMake(200, 200, 200, 200);
//                         
//                     }];

    
    
//    if (self.view.frame.size.height == 568) {
//        // put buttons down 60 pixels
//     
//        NSLog(@"OKOK");
//        self.infoButton.frame = CGRectMake(10, 10, 10,10);
//    }
    
    [super viewDidLoad];
    
    
       
    if ([categoryStatus count] == 0) {
        
        NSLog(@"category count is 0");
        
       categoryStatus = [NSMutableArray arrayWithObjects:@"active", @"active", nil];
        [self initializer];
       
    }
    
    else{
        
        [self initializer];
        [self returningRandomlyChosenCategory];
        [self returningRandomlyChosenProfile];
        _someValue = @"this is it !!";
        
        
    
       
        
        
        
    }

    
    

    
    
    
    
}

-(void)hidenavigationbar{
     self.navigationController.navigationBarHidden = YES;
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"businessman"]) {
        NSLog(@"b category true");
    }
    else {
        NSLog(@"b category false");
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}


- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (void) initializer {
    
    
    
    
   categories = [[NSMutableArray alloc] init];
    

    
    
  
    
    // Leaders Data
    
    names = [NSArray arrayWithObjects:@"Mahatma Gandhi", @"Abraham Lincoln", @"Tenzin Gyatso", @"Mikhail Gorbache", @"Julius Caesar", nil];
    countries = [NSArray arrayWithObjects:@"India", @"USA", @"Tibet", @"Russia", @"Rome", nil];
   
    imagename = [NSArray arrayWithObjects:@"gandhi.png",@"abrahamlincoln.jpg",@"tenzingyatso.jpg",@"mikhailgorbachevjpg.jpg",@"juliuscaesar.jpg",nil];
    description = [NSArray arrayWithObjects:@"Mohandas Karamchand Gandhi (pronounced [ˈmoːɦənd̪aːs ˈkərəmtʃənd̪ ˈɡaːnd̪ʱi] ( listen); 2 October 1869 – 30 January 1948) was the preeminent leader of Indian nationalism in British-ruled India. Employing nonviolent civil disobedience, Gandhi led India to independence and inspired movements for civil rights and freedom across the world.",@"Abraham Lincoln Listeni/ˈeɪbrəhæm ˈlɪŋkən/ (February 12, 1809 – April 15, 1865) was the 16th President of the United States, serving from March 1861 until his assassination in April 1865. Lincoln led the United States through its Civil War—its bloodiest war and its greatest moral, constitutional and political crisis.[2][3] In so doing he preserved the Union, abolished slavery, strengthened the national government and modernized the economy.",@" Dalai Lamas are the head monks of the Gelugpa lineage of Tibetan Buddhism. He won the Nobel Peace Prize in 1989, and is also well known for his lifelong advocacy for Tibetans inside and outside Tibet.", @"Gorbachev's policies of openness and restructuring as well as summit conferences with United States President Ronald Reagan and his reorientation of Soviet strategic aims contributed to the end of the Cold War, removed the constitutional role of the Communist Party in governing the state, and inadvertently led to the dissolution of the Soviet Union", @"Gaius Julius Caesar[2] (Classical Latin: [ˈɡaː.i.ʊs ˈjuː.lɪ.ʊs ˈkaj.sar],[3] July 100 BC[4] – 15 March 44 BC)[5] was a Roman general, statesman, Consul, and notable author of Latin prose. He played a critical role in the events that led to the demise of the Roman Republic and the rise of the Roman Empire",nil];
    
    leaders = [NSArray arrayWithObjects:names, imagename, description, countries, nil];
    
    NSLog(@"value at category status 0 is %@",categoryStatus[0]);
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"leaders"]) {
        

        [categories addObject:leaders];
         NSLog(@"this is the categories array after checking categories status %@",categories);
    }
    
     // Actors Data
    
    names = [NSArray arrayWithObjects:@"Will Smith", @"Amitabh Bachan", @"Arnold schwarzenegger", @"Julia Roberts", @"Angelina Jolie", nil];
    countries = [NSArray arrayWithObjects:@"USA", @"India", @"Austria & USA", @"USA" ,@"USA",nil];
    
    imagename = [NSArray arrayWithObjects:@"willsmith.jpg",@"amitabhbachchan.jpg",@"arnold.jpg",@"juliaroberts.jpg",@"angelinajolie.jpg",nil];
    description = [NSArray arrayWithObjects:@"Willard Carroll - Will Smith, Jr. is an American comedic and dramatic actor, producer, and rapper. He has enjoyed success in television, film and music",@"Amitabh Harivansh Bachchan (IPA: [əmɪˈtaːbʱ ˈbəttʃən]; born 11 October 1942) is an Indian film actor. He first gained popularity in the early 1970s as the angry young man of Bollywood, and has since appeared in over 180 Indian films in a career spanning more than four decades.",@"Arnold Alois Schwarzenegger  is an Austrian American actor, politician, businessman, investor, and former professional bodybuilder.",@"Julia Fiona Roberts (born October 28, 1967) is an American actress and producer. She became a Hollywood star after headlining the romantic comedy Pretty Woman (1990), which grossed $464 million worldwide",@"Angelina Jolie (/dʒoʊˈliː/ joh-lee, born Angelina Jolie Voight; June 4, 1975) is an American actress, film director, screenwriter, and author.",nil];
    
    actors = [NSArray arrayWithObjects:names, imagename, description, countries, nil];
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"actors"]) {
        NSLog(@"OK actors active");

        [categories addObject:actors];
    }
    
   
    
    if ([categories count] == 0) {
        NSLog(@"NO Categories arrays addedd !!! ");
    }
    
    // Sportman's Data
    
    names = [NSArray arrayWithObjects:@"Michael Jordan", @"Christiano Ronaldo", @"Sachin Tendulkar", @"Tiger Woods", @"Liu Xiang", nil];
    countries = [NSArray arrayWithObjects:@"USA", @"Portugal", @"India", @"USA" ,@"China",nil];
   
    imagename = [NSArray arrayWithObjects:@"michaeljordan.jpg",@"christianoronaldo.jpg",@"sachintendulkar.jpg",@"tigerwoods.jpg",@"liuxiang.jpg",nil];
    description = [NSArray arrayWithObjects:@"People know him with name MJ , He  is a Legendary Basketball player, His biography on the National Basketball Association (NBA) website states, -By acclamation, Michael Jordan is the greatest basketball player of all time",@"Ronaldo has become the most expensive player in history when he moved from Football club/Soccer club Manchester United to Real Madrid.",@"Sachin Ramesh Tendulkar  born 24 April 1973) is a former Indian cricketer widely acknowledged as the greatest batsman of the modern generation, popularly holds the title - God of Cricket among his fans.",@"Eldrick Tont - TigerWoods (born December 30, 1975)[4][5] is an American professional golfer who is among the most successful golfers of all time. Currently the World No. 1, he has been one of the highest-paid athletes in the world for several years.",@"Liu Xiang (simplified Chinese: 刘翔; traditional Chinese: 劉翔; pinyin: Liú Xiáng; born July 13, 1983 in Putuo District, Shanghai) is a Chinese 110 meter hurdler. Liu is an Olympic Gold medalist and World Champion.[1] His 2004 Olympic gold medal was the first in a men's track and field event for China.",nil];
    
    sportsman = [NSArray arrayWithObjects:names, imagename, description, countries, nil];
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"sportsman"]) {
        NSLog(@"OK Sportsman active");
        
        [categories addObject:sportsman];
    }
    
    
    
    if ([categories count] == 0) {
        NSLog(@"NO Categories arrays addedd !!! ");
    }
    
    // Businessman Data
    
    names = [NSArray arrayWithObjects:@"Dhirubhai Ambani", @"Enzo Ferrari", @"Richard Branson", @"Walt Disney", @"Ingvar Kamprad", nil];
    countries = [NSArray arrayWithObjects:@"India", @"Italy", @"UK", @"USA" ,@"Sweden",nil];
    
    imagename = [NSArray arrayWithObjects:@"dhirubhaiambani.jpg",@"enzoferrari.jpg",@"richardbranson.jpg",@"waltdisney.jpg",@"ingvarkamprad.jpg",nil];
    description = [NSArray arrayWithObjects:@"Dhirajlal Hirachand Ambani (28 December 1932 – 6 July 2002), better known as Dhirubhai Ambani, was an Indian business tycoon who founded Reliance Industries in Mumbai with his cousin. He figured in The Sunday Times list of top 50 businessmen in Asia.[3] Ambani took Reliance Industries public in 1977, and by 2007 the combined fortune of the family was $60 billion, making the Ambanis the second richest family in the world. Ambani died on 6 July 2002.[4]",@"Enzo Anselmo Ferrari (pronounced [ˈɛntso anˈsɛlmo ferˈrari]; February 18, 1898[2] – August 14, 1988) Cavaliere di Gran Croce OMRI[3] was an Italian motor racing driver and entrepreneur, the founder of the Scuderia Ferrari Grand Prix motor racing team, and subsequently of the Ferrari automobile marque.",@"Richard Charles Nicholas Branson (born 18 July 1950) is an English business magnate and investor. He is best known as the founder of Virgin Group, which comprises more than 400 companies.",@"Walter Elias -Walt Disney (/ˈdɪzni/;[2] December 5, 1901 – December 15, 1966) was an American business magnate, animator, cartoonist, producer, director, screenwriter, entrepreneur, and voice actor",@"Ingvar Feodor Kamprad  born 30 March 1926) is a Swedish business magnate. He is the founder of IKEA, a Swedish retail company specialising in furniture.",nil];
    
    businessman = [NSArray arrayWithObjects:names,imagename, description, countries, nil];
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"businessman"]) {
        NSLog(@"OK Businessman active");
                [categories addObject:businessman];
    }
    
    
    
    if ([categories count] == 0) {
        NSLog(@"NO Categories arrays addedd !!! ");
    }
    
    
    // Artist's Data
    
    names = [NSArray arrayWithObjects:@"Michael Angelo", @"Leonardo Da Vinci", @"Tracey Emin", @"Pablo Picasso", @"Rabindranath Tagore", nil];
    countries = [NSArray arrayWithObjects:@"Italy", @"Italy", @"UK", @"Spain" ,@"India",nil];
    
    imagename = [NSArray arrayWithObjects:@"michaelangelo.jpg",@"leonardodavinci.jpg",@"traceyemin.jpg",@"pablopicasso.jpg",@"rabindranathtagore.jpg",nil];
    description = [NSArray arrayWithObjects:@"Michelangelo di Lodovico Buonarroti Simoni  was an Italian sculptor, painter, architect, poet, and engineer of the High Renaissance who exerted an unparalleled influence on the development of Western art.",@"Leonardo di ser Piero da Vinci  April 15, 1452 – May 2, 1519, Old Style) was an Italian Renaissance polymath: painter, sculptor, architect, musician, mathematician, engineer, inventor, anatomist, geologist, cartographer, botanist, and writer",@"In 1997, her work Everyone I Have Ever Slept With 1963–1995, a tent appliquéd with names, was shown at Charles Saatchi's Sensation exhibition held at the Royal Academy in London. ",@"Pablo Ruiz y Picasso, known as Pablo Picasso (Spanish: [ˈpaβlo piˈkaso]; 25 October 1881 – 8 April 1973) was a Spanish painter, sculptor, printmaker, ceramicist, stage designer, poet and playwright who spent most of his adult life in France. As one of the greatest and most influential artists of the 20th century",@"Rabindranath Tagore was a Bengali polymath who reshaped his region's literature and music. He became first non european Noble prize winner in 1913.",nil];
    
    artists = [NSArray arrayWithObjects:names,imagename, description, countries, nil];
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"artists"]) {
        NSLog(@"OK artists active");
               [categories addObject:artists];
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
    
  
    
    return categories[randomlychosencategorynumber];
     }
    
    
    
}

- (NSMutableArray *) returningRandomlyChosenProfile
{
    NSMutableArray *chosenprofilearray;
    NSMutableArray *chosencategorytodisplay = [self returningRandomlyChosenCategory];
    
    
    int randomlychosenprofilenumber = arc4random() % [chosencategorytodisplay[0] count];
    
    NSLog(@"and Chosen profile is as follows:  %@ %@ %@ %@ ", chosencategorytodisplay[0][randomlychosenprofilenumber],chosencategorytodisplay[1][randomlychosenprofilenumber], chosencategorytodisplay[2][randomlychosenprofilenumber],chosencategorytodisplay[3][randomlychosenprofilenumber]);
    
    chosenprofilearray = [NSMutableArray arrayWithObjects:chosencategorytodisplay[0][randomlychosenprofilenumber],chosencategorytodisplay[1][randomlychosenprofilenumber], chosencategorytodisplay[2][randomlychosenprofilenumber],chosencategorytodisplay[3][randomlychosenprofilenumber], nil];
    
    
    return chosenprofilearray;

    
}

-(IBAction) changeProfile

{
     NSArray *tempArr =[self returningRandomlyChosenProfile];
    NSLog(@"temp arr : %@", tempArr);
    self.imageView.image = [UIImage imageNamed:tempArr[1]];
    
    NSString *name = tempArr[0];
    
    _someValue = tempArr[0];
    
    self.nameLabel.text = [NSString stringWithFormat: @"Name : %@", name];
    
      NSString *country = tempArr[3];
    
    self.countryLabel.text = tempArr[3];
    
     self.countryLabel.text = [NSString stringWithFormat: @"Country : %@", country];
    
    self.descriptionTextView.text = tempArr[2];
    
        
    
    
    
    
    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
