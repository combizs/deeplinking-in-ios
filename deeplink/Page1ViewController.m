//
//  Page1ViewController.m
//  deeplink
//
//  Created by Vipul on 19/03/14.
//  Copyright (c) 2014 Originate. All rights reserved.
//

#import "Page1ViewController.h"

@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://dev.tiltvideo.com/deep.html";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_viewWeb loadRequest:requestObj];
}

- (IBAction)mainPageClicked:(id)sender {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"dlapp://page/main"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
