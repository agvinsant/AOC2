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


// showing my info page or second view
-(IBAction)showInfoView:(id)sender
{
    infoViewController *information = [[infoViewController alloc]initWithNibName:@"infoView" bundle:nil];
    if (information !=nil)
    {
        [self presentViewController:information animated:true completion:nil];
    }
}


// function to change the background color
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
            
            stepText.text = [NSString stringWithFormat:@"%d miles added.", stepValue];
        }
    
}


//Calculation action
-(IBAction)onClickCalc:(id)sender
{
    int stepNum = step.value;
    
    
    // shortButton activated
    if (shortButton.enabled == NO)
    {
        shortRoute *gavinRide = (shortRoute*)[factory createNewTrailRide:GAVIN];
        [gavinRide setNumberMiles:5];
        [gavinRide setTimePerMile:4];

        medButton.enabled = true;
        longButton.enabled = true;
        
        int totalTime = gavinRide.timePerMile * gavinRide.numberMiles;
        int rideTime = gavinRide.timePerMile * stepNum + totalTime;
        int totalMiles = gavinRide.numberMiles + stepNum;
        
        displayText.text = [NSString stringWithFormat:@"Miles: %i. Time: %i minutes.", totalMiles, rideTime];
    }
    else if (medButton.enabled == NO)
    {
        // medButton activated
        mediumRoute *shellyRide = (mediumRoute*)[factory createNewTrailRide:SHELLY];
        [shellyRide setNumberMiles:15];
        [shellyRide setTimePerMile:5];
    
        shortButton.enabled = true;
        longButton.enabled = true;
        
        
        int totalTime = shellyRide.timePerMile * shellyRide.numberMiles;
        int rideTime = shellyRide.timePerMile * stepNum + totalTime;
        int totalMiles = shellyRide.numberMiles + stepNum;
        displayText.text = [NSString stringWithFormat:@"Miles: %i. Time: %i minutes.", totalMiles, rideTime];
    }
    else if (longButton.enabled == NO)
    {
        //longButton activated
        longRoute *adamRide = (longRoute*)[factory createNewTrailRide:ADAM];
        [adamRide setNumberMiles:30];
        [adamRide setTimeEachMile:6];
        shortButton.enabled = true;
        medButton.enabled = true;
        
                int totalTime = adamRide.timeEachMile * adamRide.numberMiles;
        int rideTime = adamRide.timeEachMile * stepNum + totalTime;
        int totalMiles = adamRide.numberMiles + stepNum;
        displayText.text = [NSString stringWithFormat:@"Miles: %i. Time: %i minutes.", totalMiles, rideTime];
    }
}



@end
