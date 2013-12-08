
#import <UIKit/UIKit.h>

@interface basicViewController : UIViewController {
    IBOutlet UITextField *txtName;
	IBOutlet UILabel *lblMessage;
}
@property (nonatomic, retain) IBOutlet UITextField *txtName;
@property (nonatomic, retain) IBOutlet UILabel *lblMessage;

- (IBAction) doSomething;
- (IBAction) makeKeyboardGoAway;

@end

