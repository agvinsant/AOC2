//
//  ViewController.h
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"
@interface ViewController : UIViewController

{
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
    
}


-(IBAction)addEventView:(id)sender;
@end
