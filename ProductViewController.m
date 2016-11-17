//
//  ProductViewController.m
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
 //866 648 4880
- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.appleProducts = [[NSMutableArray alloc]initWithObjects:@"iPad",@"MacBook Pro",@"iPhone7", nil];
    self.googleProducts = [[NSMutableArray alloc]initWithObjects:@"Pixel XI", @"ChromeCast", @"Nexus 6", nil];
    self.twitterProducts = [[NSMutableArray alloc]init];
    self.teslaProducts = [[NSMutableArray alloc]initWithObjects:@"Model S", @"Model X", @"Model 3", nil];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    if ([self.title isEqualToString:@"Apple Products"]) {
        self.products =  self.appleProducts;
    } else if ([self.title isEqualToString:@"Google Products"]){
        self.products = self.googleProducts;
    } else if ([self.title isEqualToString:@"Twitter Products"]){
        self.products = self.twitterProducts;
    } else if ([self.title isEqualToString:@"Tesla Products"]){
        self.products = self.teslaProducts;
    }
    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    cell.textLabel.text = [self.products objectAtIndex:[indexPath row]];
    
    if ([cell.textLabel.text isEqualToString:@"iPad"]){
        cell.imageView.image = [UIImage imageNamed:@"iPad.jpeg"];
    }
    if ([cell.textLabel.text isEqualToString:@"MacBook Pro"]){
        cell.imageView.image = [UIImage imageNamed:@"MacbookPro.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"iPhone7"]){
        cell.imageView.image = [UIImage imageNamed:@"iphone7.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"Pixel XI"]){
        cell.imageView.image = [UIImage imageNamed:@"PIxel XI.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"ChromeCast"]){
        cell.imageView.image = [UIImage imageNamed:@"chromecast.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"Nexus 6"]){
        cell.imageView.image = [UIImage imageNamed:@"Nexus-6.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"Model S"]){
        cell.imageView.image = [UIImage imageNamed:@"model S.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"Model X"]){
        cell.imageView.image = [UIImage imageNamed:@"ModelX.jpg"];
    }
    if ([cell.textLabel.text isEqualToString:@"Model 3"]){
        cell.imageView.image = [UIImage imageNamed:@"Model 3.jpg"];
        
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

//DELETE FUNCTIONALITY
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [self.products removeObjectAtIndex:indexPath.row];

        [tableView deleteRowsAtIndexPaths:@[indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
        
        [tableView endUpdates];
        [tableView reloadData];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
*/

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    if ([self.title isEqualToString:@"Apple Products"]) {
        [self.appleProducts exchangeObjectAtIndex:sourceIndexPath.row
                                withObjectAtIndex:destinationIndexPath.row];
    } else if ([self.title isEqualToString:@"Google Products"]){
        [self.googleProducts exchangeObjectAtIndex:sourceIndexPath.row
                                 withObjectAtIndex:destinationIndexPath.row];
    } else if ([self.title isEqualToString:@"Twitter Products"]){
        [self.twitterProducts exchangeObjectAtIndex:sourceIndexPath.row
                                  withObjectAtIndex:destinationIndexPath.row];
    } else if ([self.title isEqualToString:@"Tesla Products"]){
        [self.teslaProducts exchangeObjectAtIndex:sourceIndexPath.row
                                withObjectAtIndex:destinationIndexPath.row];
    }
    [self.tableView reloadData];
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic:
    // Create the next view controller.
    WKWebViewController *webviewViewController = [[WKWebViewController alloc] init];
    NSString *currentProduct = self.products[indexPath.row];
    
    if ([currentProduct isEqualToString:@"iPad"]){
        webviewViewController.title = @"iPad";
    }
    if ([currentProduct isEqualToString:@"MacBook Pro"]){
        webviewViewController.title = @"MacBook Pro";
    }
    if ([currentProduct isEqualToString:@"iPhone7"]){
        webviewViewController.title = @"iPhone7";
    }
    if ([currentProduct isEqualToString:@"Pixel XI"]){
        webviewViewController.title = @"Pixel XI";
    }
    if ([currentProduct isEqualToString:@"ChromeCast"]){
        webviewViewController.title = @"ChromeCast";
    }
    if ([currentProduct isEqualToString:@"Nexus 6"]){
        webviewViewController.title = @"Nexus 6";
    }
    if ([currentProduct isEqualToString:@"Model S"]){
        webviewViewController.title = @"Model S";
    }
    if ([currentProduct isEqualToString:@"Model X"]){
        webviewViewController.title = @"Model X";
    }
    if ([currentProduct isEqualToString:@"Model 3"]){
        webviewViewController.title = @"Model 3";
    }
    
    
    // Pass the selected object to the new view controller.
    // Push the view controller.
    [self.navigationController pushViewController:webviewViewController animated:YES];
}


@end
