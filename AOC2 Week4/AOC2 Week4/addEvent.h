//
//  addEvent.h
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/21/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

//Created a new protocal for the delegate between the addEvent and ViewController
@protocol addEventDelegate <NSObject>

@required
-(void)didSave:(NSString*)nameString;

@end


@interface addEvent : UIViewController <UITextFieldDelegate>
{
    // creating the delegate tag
    id<addEventDelegate>delegate;
    
    IBOutlet UILabel *swipeLeft;
    IBOutlet UITextField *eventName;
    IBOutlet UIDatePicker *picker;
    UISwipeGestureRecognizer *leftSwipe;
    NSDate *eventDate;
}

// Close Keyboard button function
-(IBAction)onClose:(id)sender;

// Save Event button function

-(void)onSwipeLeft:(UISwipeGestureRecognizer*)seeSwipeLeft;


// creating a property for the delegate
@property (strong) id<addEventDelegate>delegate;
@end
