//
//  ViewController.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/12/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

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
-(IBAction)step:(id)sender
{
    
    
        UIStepper *stepControl = (UIStepper*)sender;
        if (stepControl != nil)
        {
            int stepValue = stepControl.value;
            
            labelText.text = [NSString stringWithFormat:@"%d miles.", stepValue];
        }
    
}
-(IBAction)onClickCalc:(id)sender
{

}
-(IBAction)showInfoView:(id)sender
{
    infoViewController *information = [[infoViewController alloc]initWithNibName:@"infoView" bundle:nil];
    if (information !=nil)
    {
        [self presentViewController:information animated:true completion:nil];
    }
}

@end
