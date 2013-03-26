//
//  ViewController.h
//  AOC2 Week4Redo
//
//  Created by Adam Vinsant on 3/25/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "addEvent.h"

@interface ViewController : UIViewController <addEventDelegate>

{
    IBOutlet UIButton *clear;
    IBOutlet UITextView *eventList;
    IBOutlet UIButton *save;
    UISwipeGestureRecognizer *rightSwipe;
    IBOutlet UILabel *swipeRight;
    
    id<addEventDelegate> delegate;
}

// setting the property for the delegate
@property(strong)id<addEventDelegate> delegate;

// Saves eventList
-(IBAction)onSave:(id)sender;

// Clears text view
-(IBAction)clearList:(id)sender;
@end

