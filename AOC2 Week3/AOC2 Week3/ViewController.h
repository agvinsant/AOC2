//
//  ViewController.h
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController <addEventDelegate>

{
    IBOutlet UIButton *clear;
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
    id<addEventDelegate> delegate;
}

// setting the property for the delegate
@property(strong)id<addEventDelegate> delegate;

// Button function to open addEvent view
-(IBAction)addEventView:(id)sender;
-(IBAction)clearList:(id)sender;
@end
