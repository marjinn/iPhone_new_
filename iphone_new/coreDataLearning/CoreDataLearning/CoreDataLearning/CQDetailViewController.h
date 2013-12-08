//
//  CQDetailViewController.h
//  CoreDataLearning
//
//  Created by mar Jinn on 12/9/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CQDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
