//
//  addEvent.m
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "addEvent.h"


@interface addEvent ()

@end

@implementation addEvent

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}





-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
     
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (hideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
      
    [super viewWillAppear:animated];
}


-(void)showKeyboard: (NSNotification *)notification
{
    
}

-(void)hideKeyboard: (NSNotification *)notification
{
  
}

-(IBAction)onClose:(id)sender
{
    [eventName resignFirstResponder];
}




-(IBAction)onSave:(id)sender
{
    picker = (UIDatePicker*)sender;
    NSDate *date = picker.date;
    dateInput = [NSString stringWithFormat: @"%@", [date description] ];
    
    NSString *eventString = [NSString stringWithFormat:@"/n/nNew Event: %@/nDate and Time: %@", eventName.text, dateInput];
    
    
    //Testing function in log.
    //NSLog(@"Creating %@", eventString);


    [delegate didSave:eventString];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
