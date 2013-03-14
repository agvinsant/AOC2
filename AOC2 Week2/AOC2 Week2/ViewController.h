//
//  ViewController.h
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/12/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //UI buttons
    IBOutlet UIButton *shortButton;
    IBOutlet UIButton *medButton;
    IBOutlet UIButton *longButton;
    IBOutlet UIButton *calcButton;
    // Label for background color text
    IBOutlet UILabel *stepText;
    // Stepper
    IBOutlet UIStepper *step;
    // Text field
    IBOutlet UITextField *displayText;
}
// Functions
-(IBAction)onClick:(id)sender;
-(IBAction)colorSelector:(id)sender;
-(IBAction)step:(id)sender;
-(IBAction)onClickCalc:(id)sender;
-(IBAction)showInfoView:(id)sender;

@end
