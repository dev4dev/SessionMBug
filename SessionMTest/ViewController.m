//
//  ViewController.m
//  SessionMTest
//
//  Created by Alex Antonyuk on 5/2/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

#import "ViewController.h"

#import "SessionMWrapper.h"
#import <SessionM/SMPortalButton.h>
#import "PopoverViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	SMPortalButton *portalButton = [SMPortalButton buttonWithType:UIButtonTypeSystem];
	[portalButton.button setTitle:@"Portal Button" forState:UIControlStateNormal];
	[portalButton sizeToFit];

	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:portalButton];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)sendAction:(id)sender
{
	[[SessionMWrapper sharedWrapper] demoAction];
}

- (IBAction)sendActionBroken:(id)sender
{
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Wow such alert" message:@"Many controller" preferredStyle:UIAlertControllerStyleAlert];
	[alert addAction:[UIAlertAction actionWithTitle:@"Wow" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

	}]];
	[self presentViewController:alert animated:YES completion:nil];

	[[SessionMWrapper sharedWrapper] demoAction];
}

- (IBAction)onPopIt:(UIBarButtonItem *)sender
{
	PopoverViewController *vc = [PopoverViewController new];
	vc.modalPresentationStyle = UIModalPresentationPopover;
	vc.popoverPresentationController.barButtonItem = sender;

	[self presentViewController:vc animated:YES completion:nil];
}

@end
