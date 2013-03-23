//
//  ViewController.m
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/22/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize eventName;

- (void)viewDidLoad
{
    //Loads saved event
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *eventText = [defaults objectForKey:@"Saved"];
        
        eventList.text = eventText;
    }

    // Setting the minimum date for the picker
    picker.minimumDate = [NSDate date];
    
    //caching the original frame size for the list view.
    origlistViewFrame = listView.frame;
    
        [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    //Left swipe gesture recognizer
    leftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeft addGestureRecognizer:leftSwipe];
    
    //Right swipe gesture recognizer
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRight addGestureRecognizer:rightSwipe];

    // Keyboard notification functions, willShow and willHide
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewWillAppear:animated];
}

// happens when keyboard appears
-(void)keyboardWillShow:(NSNotification*)notification
{
    close.hidden = false;
    keyboardLabel.hidden = false;
    dateLabel.hidden = true;
}

//happens when keyboard is hidden
-(void)keyboardWillHide:(NSNotification*)notification
{
    close.hidden = true;
    keyboardLabel.hidden = true;
    dateLabel.hidden = false;
}

// Closes keyboard and hides listView because it kept wanting to pop up after I closed the keyboard. 
-(IBAction)onClose:(id)sender
{
    listView.hidden = true;
    [eventName resignFirstResponder];
}

// Clears eventList
-(IBAction)clearList:(id)sender
{
    eventList.text = @"Dates shown here";
}

// Swipe functions for left and right swipe
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //Swipe right functions
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        // Clearing out the textview
        if ([eventList.text isEqualToString:@"Dates shown here"])
        {
            eventList.text = @"";
        }
        
        // hiding the keyboard button and label
        close.hidden = true;
        keyboardLabel.hidden = true;
        
        // resetting the date picker
        [picker setDate:[NSDate date]];
        
        //Animation call
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.5];
            listView.frame = CGRectMake(320.0f, 0.0f, listView.frame.size.width, listView.frame.size.height);
        [UIView commitAnimations];
     
        // Swipe Left Function
    }else if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
                
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.5];
        
        if ([eventName.text isEqualToString:@""])
        {
            UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please enter event name" delegate:nil cancelButtonTitle:@"Fix it!" otherButtonTitles:nil];
            [error show];
        }else{
            
            if(close.hidden == false)
            {
                [self onClose:nil];
                close.hidden = true;
                keyboardLabel.hidden = true;
            }

            // Setting my date strings
            //picker = (UIDatePicker*)sender;
            eventDate = picker.date;
            
            // Formatting date... Thanks to the Mac Developer Library...
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            [formatDate setDateStyle:NSDateFormatterMediumStyle];
            [formatDate setTimeStyle:NSDateFormatterShortStyle];
            
            // Setting the Date string
            NSString *formattedDateString = [formatDate stringFromDate:eventDate];
            //NSLog(@"formattedDateString: %@", formattedDateString);
            
            // Saving to eventList
            nameString = eventList.text;
            eventList.text = [NSString stringWithFormat:@"New Event: %@\nDate and Time: %@\n\n",eventName.text, formattedDateString];
            
            //This tells it to append the view with new event instead of overriding
            NSString *eventString = nameString;
            
            if([eventList.text isEqualToString:@"Dates shown here"])
            {
                eventList.text = nameString;
            }
            else
            {
                eventList.text = [eventList.text stringByAppendingString:eventString];
            }
                
            // telling you that the event is saved in an alert
            UIAlertView *successAlert = [[UIAlertView alloc]initWithTitle:@"Success!" message:@"You have added a new event." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
            [successAlert show];
            
            // Showing the listView after it was hidden by the keyboard function and clearing the eventName textField.
            listView.hidden = false;
            eventName.text = @"";
            
            [UIView commitAnimations];
        }
    }
        
}

// Saves eventList when Save button is pushed
-(IBAction)onSave:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (defaults != nil)
    {
        NSString *eventText = eventList.text;
        [defaults setObject:eventText forKey:@"Saved"];
        [defaults synchronize];
    }
    
    // showing alert for saving the data
    UIAlertView *saveAlert = [[UIAlertView alloc]initWithTitle:@"Saved!" message:@"Events saved." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
    [saveAlert show];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
