//
//  MXFirstViewController.m
//  HomWorkOne
//
//  Created by longfei on 14-7-13.
//  Copyright (c) 2014年 longfei. All rights reserved.
//

#import "MXFirstViewController.h"

@interface MXFirstViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MXFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://m.taobao.com"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
