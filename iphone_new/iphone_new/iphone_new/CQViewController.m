//
//  CQViewController.m
//  iphone_new
//
//  Created by mar Jinn on 12/8/13.
//  Copyright (c) 2013 mar Jinn. All rights reserved.
//

#import "CQViewController.h"

@interface CQViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray* moods;
}

@end

@implementation CQViewController

@synthesize colorChooser,sampleText;
@synthesize datePicker,dayBtn;
@synthesize cstmPkrVw;

#pragma mark
#pragma mark ViewMethods
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    moods = [[NSArray alloc]initWithObjects:
    @"Ecstatic",
    @"Happy",
    @"Cheerful",
    @"Fine",
    @"Tired",
    @"Maulidn",
    @"Depressed",
    @"Overwhelmed",
    nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark
#pragma mark IBACTIONS
//ValueChanged Event
-(IBAction)colorChanged:(id)sender
{
    NSInteger segementIndex;
    segementIndex = [[self colorChooser]selectedSegmentIndex];
    
    switch (segementIndex) {
        case 0:
            [[self sampleText]setTextColor:[UIColor blackColor]];
            break;
        
        case 1:
            [[self sampleText]setTextColor:[UIColor blueColor]];
            break;
            
            case 2:
            [[self sampleText]setTextColor:[UIColor redColor]];
            break;
            
        default:
            [[self sampleText]setTextColor:[UIColor purpleColor]];
            break;
    }
}

-(IBAction)dayBtnClciked:(id)sender
{
    NSDate* chosen;
    chosen = [[self datePicker]date];
    
    NSDateFormatter* dateFormatter;
    dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EEEE"];
    
    NSString* weekday;
    weekday = [dateFormatter stringFromDate:chosen];
    
    NSString* msg;
    msg = [[NSString alloc]initWithFormat:@"That's a %@",weekday];
    
    UIAlertView* alert;
    alert = [[UIAlertView alloc]initWithTitle:@"What day is that?"
                                      message:msg
                                     delegate:nil
                            cancelButtonTitle:@"Thanks"
                            otherButtonTitles:nil, nil];
    [alert show];
    
    /* Non-ARC
    [alert release];
    [msg release];
    [dateFormatter release];
    */
    
}


#pragma mark
#pragma mark UIPickerViewDataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [moods count];
}


#pragma mark UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [moods objectAtIndex:row];//called Multiple Times
}

//handle Selection
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    UIColor* newColor;
    
    switch (row) {
        case 0: case 1: case 2:
            newColor = [UIColor yellowColor];
            break;
            
        case 3: case 4: case 5:
            newColor = [UIColor grayColor];
            break;
            
        case 6: case 7: case 8:
            newColor = [UIColor brownColor];
            break;
        
        default:
            newColor = [UIColor purpleColor];
            break;
    }
    
    [[self view]setBackgroundColor:newColor];
    
}

#pragma mark
#pragma mark init

- (id)init
{
    self = [super init];
    if (self) {
        //initializations
    }
    return self;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super init];
    if (self) {
        //initializations
    }
    return self;
}


#pragma mark
#pragma mark Dealloc

- (void)dealloc
{
    //deallocations
    colorChooser = nil ;
    sampleText = nil;
    datePicker = nil;
    dayBtn = nil;
    cstmPkrVw = nil;
    
    moods = nil;
    
    /*Non -Arc
     [colorChooser release];
     [sampleText release];
     [datePicker release];
     [dayBtn release];
     [cstmPkrVw release];
     
     [moods release];
     
     [super dealloc];
     */
}



@end
