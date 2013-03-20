//
//  ViewController.m
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"
#import "addEvent.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// sending to the textView from the addEvent view

-(void)didSave:(NSString *)nameString
{
    eventList.text = nameString;
}

// Button call function to open the addEvent view
-(IBAction)addEventView:(id)sender
{
    addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
    
    if (eventInfo !=nil)
    {
        // calling the delegate
        eventInfo.delegate = self;
        
        [self presentViewController:eventInfo animated:true completion:nil];
    }
}



@end
