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

-(IBAction)onChange:(id)sender
{
    picker = (UIDatePicker*)sender;
    if(picker != nil)
    {
        NSDate *date = picker.date;
        
        NSLog(@"date picked: %@", [date description]);
    }
}



-(IBAction)onSave:(id)sender
{
    
    NSString *eventString = [NSString stringWithFormat:@"New Event: %@", eventName.text];
    
    //Testing function in log.
    NSLog(@"Creating %@", eventString);

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
