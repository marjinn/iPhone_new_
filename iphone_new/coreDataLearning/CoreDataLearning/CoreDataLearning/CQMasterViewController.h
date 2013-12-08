//
//  CQMasterViewController.h
//  CoreDataLearning
//
//  Created by mar Jinn on 12/9/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface CQMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
