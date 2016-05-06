//
//  SplitVC.m
//  SessionMTest
//
//  Created by Alex Antonyuk on 5/6/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

#import "SplitVC.h"

@implementation SplitVC

- (void)awakeFromNib
{
	[super awakeFromNib];

	self.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
}

@end
