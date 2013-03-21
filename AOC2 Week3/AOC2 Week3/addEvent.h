//
//  addEvent.h
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
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
    

    IBOutlet UITextField *eventName;
    IBOutlet UIDatePicker *picker;
    NSDate *eventDate;
}

// Close Keyboard button function
-(IBAction)onClose:(id)sender;

// Save Event button function
-(IBAction)onSave:(id)sender;



// creating a property for the delegate
@property (strong) id<addEventDelegate>delegate;
@end
