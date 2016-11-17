//
//  WKWebViewController.m
//  NavCtrl
//
//  Created by Rael Kenny on 11/15/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "WKWebViewController.h"

@interface WKWebViewController ()

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc]init];
    WKWebView *webView = [[WKWebView alloc]initWithFrame:self.view.frame
                                           configuration: theConfiguration];;
    webView.navigationDelegate = self;
    
    if ([self.title isEqualToString:@"iPad"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"http://www.apple.com/ipad/"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"MacBook Pro"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"http://www.apple.com/macbook-pro/"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"iPhone7"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"http://www.apple.com/iphone-7/"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Pixel XI"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://store.google.com/product/pixel_phone"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Chromecast"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://www.google.com/intl/en_us/chromecast/?utm_source=chromecast.com"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Nexus 6"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://www.google.com/nexus/6p/"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Model S"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://www.tesla.com/models"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Model X"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://www.tesla.com/modelx"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
    if ([self.title isEqualToString:@"Model 3"]) {
        NSURL *NSUrl=[NSURL URLWithString:@"https://www.tesla.com/model3"];
        NSURLRequest *urlRequest=[NSURLRequest requestWithURL:NSUrl];
        [webView loadRequest:urlRequest];
        [self.view addSubview:webView];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
