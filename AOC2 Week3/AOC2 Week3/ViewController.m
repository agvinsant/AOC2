//
//  ViewController.m
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Showing the Add Event View
-(IBAction)addEventView:(id)sender
{
    addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
    if (eventInfo !=nil)
    {
        [self presentViewController:eventInfo animated:true completion:nil];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end