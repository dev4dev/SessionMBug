//
//  PopoverViewController.m
//  SessionMTest
//
//  Created by Alex Antonyuk on 5/6/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

#import "PopoverViewController.h"
#import "SessionMWrapper.h"

@interface PopoverViewController ()

@end

@implementation PopoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender
{
	[[SessionMWrapper sharedWrapper] demoAction];
}

@end
