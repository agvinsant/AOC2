//
//  addEvent.h
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol addEventDelegate <NSObject>
@required
-(void)didSave:(NSString*)nameString;

@end


@interface addEvent : UIViewController <UITextFieldDelegate>
{
    id<addEventDelegate>delegate;
    
    
    IBOutlet UITextField *eventName;
    IBOutlet UIDatePicker *picker;
    NSString *dateInput;
}

-(IBAction)onClose:(id)sender;
-(IBAction)onSave:(id)sender;


@property (strong) id<addEventDelegate>delegate;
@end
