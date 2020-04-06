#import "ViewController.h"

@implementation ViewController

#pragma mark -

- (void)viewDidLoad {
    [super viewDidLoad];
    // todo
 //   UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
   
    
    
    UILabel* labelResultColor = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 94.0, 80.0, 30.0)];
    labelResultColor.accessibilityIdentifier = @"labelResultColor";
    
    UILabel* labelRed = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 154.0, 80.0, 30.0)];
    labelRed.accessibilityIdentifier = @"labelRed";
    
    UILabel* labelGreen = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 214.0, 80.0, 30.0)];
    labelGreen.accessibilityIdentifier = @"labelGreen";
    
    UILabel* labelBlue = [[UILabel alloc] initWithFrame:CGRectMake(30.0, 274.0, 80.0, 30.0)];
    labelBlue.accessibilityIdentifier = @"labelBlue";
    
    UITextView* textFieldRed = [[UITextView alloc] initWithFrame:CGRectMake(150.0, 154.0, 240.0, 30.0)];
    textFieldRed.accessibilityIdentifier = @"textFieldRed";
    
    UITextView* textFieldGreen = [[UITextView alloc] initWithFrame:CGRectMake(150.0, 214.0, 240.0, 30.0)];
    textFieldGreen.accessibilityIdentifier = @"textFieldGreen";
    
    UITextView* textFieldBlue = [[UITextView alloc] initWithFrame:CGRectMake(150.0, 274.0, 240.0, 30.0)];
    textFieldBlue.accessibilityIdentifier = @"textFieldBlue";
    
    UIView* viewResultColor =[[UIView alloc] initWithFrame:CGRectMake(170.0, 94.0, 240.0, 30.0)];
    viewResultColor.accessibilityIdentifier = @"viewResultColor";
    
    UIButton* buttonProcess = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonProcess addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
     [buttonProcess setFrame:CGRectMake(169.0, 354.0, 86.0, 42.0)];
    [buttonProcess setTitle:@"Process" forState:UIControlStateNormal];
    [buttonProcess setExclusiveTouch:YES];
    buttonProcess.accessibilityIdentifier = @"buttonProcess";
   
    
    
    
    
    
    
}

@end
