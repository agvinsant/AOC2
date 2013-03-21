//
//  addEvent.m
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/21/13.
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
    
    // Setting the minimum date for the picker
    
    picker.minimumDate = [NSDate date];
    leftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipeLeft)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeft addGestureRecognizer:leftSwipe];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// When the Close Keyboard button is pressed

-(IBAction)onClose:(id)sender
{
    [eventName resignFirstResponder];
}


-(void)onSwipeLeft:(UISwipeGestureRecognizer*)seeSwipeLeft
{
    if(seeSwipeLeft.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if ([eventName.text isEqualToString:@""])
        {
            UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please enter event name" delegate:nil cancelButtonTitle:@"Fix it!" otherButtonTitles:nil];
            [error show];
        }else{
            
            // Setting my date strings
            eventDate = picker.date;
            //
            
            // Formatting date... Thanks to the Mac Developer Library...
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            [formatDate setDateStyle:NSDateFormatterMediumStyle];
            [formatDate setTimeStyle:NSDateFormatterShortStyle];
            
            // Setting the Date string
            NSString *formattedDateString = [formatDate stringFromDate:eventDate];
            //NSLog(@"formattedDateString: %@", formattedDateString);
            
            // Saving to ViewController textView
            [delegate didSave:[NSMutableString stringWithFormat:@"New Event: %@\nDate and Time: %@\n\n",eventName.text, formattedDateString]];
            
            // telling you that the event is saved in an alert
            
            UIAlertView *successAlert = [[UIAlertView alloc]initWithTitle:@"Saved" message:@"New event added." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
            [successAlert show];
            
            // sending the addEvent View away
            [self dismissViewControllerAnimated:true completion:nil];
        }
    }
}


@end

