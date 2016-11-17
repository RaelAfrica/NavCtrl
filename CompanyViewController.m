//
//  CompanyViewController.m
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import "CompanyViewController.h"
#import "ProductViewController.h"

@interface CompanyViewController ()

@end

@implementation CompanyViewController

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
    NSLog(@"Changed!");
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.companyList = [[NSMutableArray alloc]initWithObjects:@"Apple", @"Google", @"Twitter", @"Tesla", nil];
    self.title = @"Companies";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//       #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
//      #warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.companyList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = [self.companyList objectAtIndex:[indexPath row]];
    
    if ([cell.textLabel.text isEqualToString:@"Apple"]){
        cell.imageView.image = [UIImage imageNamed:@"img-companyLogo_Apple@2x.png"];
    }
    
    if ([cell.textLabel.text isEqualToString:@"Google"]){
        cell.imageView.image = [UIImage imageNamed:@"img-companyLogo_Google@2x.png"];
    }
    
    if ([cell.textLabel.text isEqualToString:@"Twitter"]){
        cell.imageView.image = [UIImage imageNamed:@"img-companyLogo_Twitter@2x.png"];
    }
    
    if ([cell.textLabel.text isEqualToString:@"Tesla"]){
        cell.imageView.image = [UIImage imageNamed:@"img-companyLogo_Tesla@2x.png"];
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



//Delete Functionality
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle                            forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [self.companyList removeObjectAtIndex: indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
        
        [tableView endUpdates];
        [tableView reloadData];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    [self.companyList exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
    [self.tableView reloadData];
}
//// Override to support rearranging the table view.
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
//{
//    
//    //self.companyList = [[NSMutableArray alloc]initWithObjects:@"Apple", @"Google", @"Twitter", @"Tesla", nil];
//    [self.tableView reloadData];
//
//}


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *currentCompanies = self.companyList[indexPath.row];

    if ([currentCompanies isEqualToString:@"Apple"]){
        self.productViewController.title = @"Apple Products";
    }
    else if ([currentCompanies isEqualToString:@"Google"]){
        self.productViewController.title = @"Google Products";
    }
    else if ([currentCompanies isEqualToString:@"Twitter"]) {
        self.productViewController.title = @"Twitter Products";
    }
    else if ([currentCompanies isEqualToString:@"Tesla"]) {
        self.productViewController.title = @"Tesla Products";
    }
    
    [self.navigationController
        pushViewController:self.productViewController
        animated:YES];
    
}
 


@end
