//
//  SessionMWrapper.h
//  SessionMTest
//
//  Created by Alex Antonyuk on 5/2/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SessionMWrapper : NSObject

+ (instancetype)sharedWrapper;

- (void)setup;

- (void)demoAction;

@end
