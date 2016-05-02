//
//  SessionMWrapper.m
//  SessionMTest
//
//  Created by Alex Antonyuk on 5/2/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

#import "SessionMWrapper.h"
#import <SessionM/SessionM.h>

@interface SessionMWrapper () <SessionMDelegate>

@end

@implementation SessionMWrapper

+ (instancetype)sharedWrapper
{
	static dispatch_once_t once;
	static SessionMWrapper *instance;
	dispatch_once(&once, ^ {
		instance = [[SessionMWrapper alloc] init];
	});
	return instance;
}

- (void)setup
{
	[[SessionM sharedInstance] setDelegate:self];
	SMStart(@"");
}

- (void)demoAction
{
	SMAction(@"Demo Action");
}

#pragma mark - Delegate

#warning I think this should be called regardless of the rootViewcontroller's value

- (UIViewController *)sessionM:(SessionM *)session viewControllerForActivity:(SMActivityType)type
{
	return [UIApplication sharedApplication].keyWindow.rootViewController;
}

@end
