//
//  addEvent.h
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addEvent : UIViewController

{
    IBOutlet UIButton *save;
    IBOutlet UIButton *close;
    IBOutlet UITextField *eventName;
}

-(IBAction)onClick:(id)sender;

@end