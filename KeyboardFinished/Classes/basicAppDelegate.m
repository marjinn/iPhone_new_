//
//  basicAppDelegate.m
//  basic
//
//  Created by Simon Allardice on 8/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "basicAppDelegate.h"
#import "basicViewController.h"

@implementation basicAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
