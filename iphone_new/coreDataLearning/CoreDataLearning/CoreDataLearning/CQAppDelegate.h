//
//  CQAppDelegate.h
//  CoreDataLearning
//
//  Created by mar Jinn on 12/9/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CQAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
