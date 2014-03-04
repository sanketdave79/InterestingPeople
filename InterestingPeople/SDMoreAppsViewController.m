//
//  SDMoreAppsViewController.m
//  InterestingPeople
//
//  Created by sanket on 10/02/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//


// download images and other big files in the backgorund!
// cache images so when scrolling up and down it won't release images!


#import "SDMoreAppsViewController.h"
#import "SDMoreAppsCell.h"

@interface SDMoreAppsViewController () {
    NSArray *namesArray, *imagesArray, *descriptionArray, *priceArray, *urlArray;
}

@end

@implementation SDMoreAppsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
    dispatch_queue_t q = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    
    dispatch_async(q, ^{
        NSError *error;

        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.techmentation.com/IphoneApplications/moreapps.json"]];
        
        NSMutableArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        if (error)
            NSLog(@"JSONObjectWithData error: %@", error.localizedDescription);
        
        
        imagesArray = [array valueForKey:@"image"];
        priceArray = [array valueForKey:@"price"];
        descriptionArray = [array valueForKey:@"short_description"];
        namesArray = [array valueForKey:@"Name"];
        urlArray = [array valueForKey:@"url"];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"array : %@", imagesArray);

            [self.tableView reloadData];
        });
    });
    
    
    
    
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return namesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    SDMoreAppsCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.appName.text = [NSString stringWithFormat:@"%@",namesArray[indexPath.row]];
    cell.appDescription.text = [NSString stringWithFormat:@"%@",descriptionArray[indexPath.row]];
    cell.appPrice.text = [NSString stringWithFormat:@"$%@",priceArray[indexPath.row]];
    
    
    
    
    dispatch_queue_t q = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    
    dispatch_async(q, ^{
        NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imagesArray[indexPath.row]]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.appImage.image = [UIImage imageWithData: data];
        });
    });
    
    

    
    // Configure the cell...
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlArray[indexPath.row]]]) {
        NSLog(@"Something went wrong buddy!");
    }
        

    
    
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
