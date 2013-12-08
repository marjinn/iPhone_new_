//
//  basicAppDelegate.h
//  basic
//
//  Created by Simon Allardice on 8/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class basicViewController;

@interface basicAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    basicViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet basicViewController *viewController;

@end

