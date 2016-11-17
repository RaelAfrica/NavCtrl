//
//  ProductViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WKWebViewController.h"

@interface ProductViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) NSMutableArray *products;

@property (strong, nonatomic) NSMutableArray *appleProducts;
@property (strong, nonatomic) NSMutableArray *googleProducts;
@property (strong, nonatomic) NSMutableArray *twitterProducts;
@property (strong, nonatomic) NSMutableArray *teslaProducts;


@end
