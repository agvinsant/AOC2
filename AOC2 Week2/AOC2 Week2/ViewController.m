//
//  ViewController.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/12/13.
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Functions for buttons
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button == shortButton)
    {
        shortButton.enabled = false;
        medButton.enabled = true;
        longButton.enabled = true;
        displayText.text = @"Gavin is going to ride on the short route.";
    }
    else if (button == medButton)
    {
        shortButton.enabled = true;
        medButton.enabled = false;
        longButton.enabled = true;
        displayText.text = @"Shelly is going to ride on the medium route.";
    }
    else if (button == longButton)
    {
        shortButton.enabled = true;
        medButton.enabled = true;
        longButton.enabled = false;
        displayText.text = @"Adam is going to ride on the long route.";
    }
}

@end
