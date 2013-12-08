//
//  CQViewController.h
//  iphone_new
//
//  Created by mar Jinn on 12/8/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CQViewController : UIViewController

@property(nonatomic,weak)IBOutlet  UISegmentedControl* colorChooser;
@property(nonatomic,weak)IBOutlet  UITextView* sampleText;

@property(nonatomic,weak)IBOutlet UIDatePicker* datePicker;
@property(nonatomic,weak)IBOutlet UIButton* dayBtn;

@property(nonatomic,weak)IBOutlet UIPickerView* cstmPkrVw;

//ValueChanged Event - UISegementedControl
-(IBAction)colorChanged:(id)sender;

//touchUpinside - UIButton
-(IBAction)dayBtnClciked:(id)sender;

//toucUpInside
@end
