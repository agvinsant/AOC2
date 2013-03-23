//
//  ViewController.h
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/22/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
{
    IBOutlet UIView *listView;
    IBOutlet UILabel *dateLabel;
    IBOutlet UILabel *keyboardLabel;
    IBOutlet UIButton *close;
    IBOutlet UIView *addEvent;
    IBOutlet UILabel *swipeRight;
    IBOutlet UILabel *swipeLeft;
    IBOutlet UITextView *eventList;
    IBOutlet UIButton *clear;
    IBOutlet UIButton *save;
    UITextField *eventName;
    IBOutlet UIDatePicker *picker;
    NSDate *eventDate;
    UISwipeGestureRecognizer *leftSwipe;
    UISwipeGestureRecognizer *rightSwipe;
    CGRect origlistViewFrame;
    NSString *nameString;
}
@property (nonatomic, retain) IBOutlet UITextField *eventName;

// Close Keyboard button function
-(IBAction)onClose:(id)sender;
// Clear event list
-(IBAction)clearList:(id)sender;
// Saves eventList
-(IBAction)onSave:(id)sender;
@end
