//
//  main.m
//  iphone_new
//
//  Created by mar Jinn on 12/8/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CQAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([CQAppDelegate class]));
        //UIApplicationMain looks up at iphone_new-info.plist
        //for "Main storyboard file base name"
    }
}


//Old Main
/*
 int main(int argc, char *argv[]) {
 
 NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
 int retVal = UIApplicationMain(argc, argv, nil, nil);
 //UIApplicationMain looks up at iphone_new-info.plist
 //for "Main nib file base name"
 
 [pool release];
 return retVal;
 }
*/