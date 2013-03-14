//
//  ViewController.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/12/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"
#import "factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
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

-(IBAction)showInfoView:(id)sender
{
    infoViewController *information = [[infoViewController alloc]initWithNibName:@"infoView" bundle:nil];
    if (information !=nil)
    {
        [self presentViewController:information animated:true completion:nil];
    }
}

-(IBAction)colorSelector:(id)sender
{
    UISegmentedControl *bgColorControl = (UISegmentedControl*)sender;
    if (bgColorControl != nil)
    {
        if (bgColorControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (bgColorControl.selectedSegmentIndex == 3)
        {
            self.view.backgroundColor = [UIColor lightGrayColor];
        }
    }
}

// Step controller
-(IBAction)step:(id)sender
{
    
    
        UIStepper *stepControl = (UIStepper*)sender;
        if (stepControl != nil)
        {
            int stepValue = stepControl.value;
            
            stepText.text = [NSString stringWithFormat:@"%d miles.", stepValue];
        }
    
}


//Calculation action
-(IBAction)onClickCalc:(id)sender
{
    int stepNum = step.value;
    
    
    
    if (shortButton.enabled == NO)
    {
        shortRoute *gavinRide = (shortRoute*)[factory createNewTrailRide:GAVIN];
        [gavinRide setNumberMiles:5];
        [gavinRide setTimePerMile:5];
        [gavinRide calculateRideTime];
        medButton.enabled = true;
        longButton.enabled = true;
        
        int rideTime = gavinRide.timePerMile * stepNum;
       
        displayText.text = [NSString stringWithFormat:@"Miles: %i. Time: %i minutes.", stepNum, rideTime];
    }
    else if (medButton.enabled == NO)
    {
        mediumRoute *shellyRide = (mediumRoute*)[factory createNewTrailRide:SHELLY];
        [shellyRide setNumberMiles:15];
        [shellyRide setTimePerMile:5];
        [shellyRide setBreakTime:10];
        [shellyRide calculateRideTime];
        shortButton.enabled = true;
        longButton.enabled = true;
    

    }
    else if (longButton.enabled == NO)
    {
        longRoute *adamRide = (longRoute*)[factory createNewTrailRide:ADAM];
        [adamRide setNumberMiles:30];
        [adamRide setTimeEachMile:4];
        [adamRide setBreakTime:15];
        [adamRide calculateRideTime];
        shortButton.enabled = true;
        medButton.enabled = true;
    }
}



@end
