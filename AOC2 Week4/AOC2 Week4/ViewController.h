//
//  ViewController.h
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/20/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController <addEventDelegate>

{
    IBOutlet UILabel *swiperight;
    IBOutlet UIButton *clear;
    IBOutlet UITextView *eventList;
    UISwipeGestureRecognizer *rightSwipe;
    id<addEventDelegate> delegate;
}

// setting the property for the delegate
@property(strong)id<addEventDelegate> delegate;

// swipe function to open addEvent view

-(void)onSwipeRight:(UISwipeGestureRecognizer*)seeSwipeRight;

-(IBAction)clearList:(id)sender;
@end

