//
//  ViewController.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/5/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // creating labels for the track types
    // Short track label
    shortLabel = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 20.0f, 200.f, 60.0f)];
    if (shortLabel != nil)
    {
        shortLabel.backgroundColor = [UIColor greenColor];
        shortLabel.text = @"Short Ride Track";
        shortLabel.numberOfLines = 2;
        shortLabel.textAlignment = NSTextAlignmentCenter;
        shortLabel.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:shortLabel];
    
    // Medium track label
    mediumLabel = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 180.0f, 200.f, 60.0f)];
    if (mediumLabel != nil)
    {
        mediumLabel.backgroundColor = [UIColor blueColor];
        mediumLabel.text = @"Medium Ride Track";
        mediumLabel.numberOfLines = 2;
        mediumLabel.textAlignment = NSTextAlignmentCenter;
        mediumLabel.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:mediumLabel];
    
    // Long track label
    longLabel = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 180.0f, 200.f, 60.0f)];
    if (longLabel != nil)
    {
        longLabel.backgroundColor = [UIColor blueColor];
        longLabel.text = @"Long Ride Track";
        longLabel.numberOfLines = 2;
        longLabel.textAlignment = NSTextAlignmentCenter;
        longLabel.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:longLabel];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
