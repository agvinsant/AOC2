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
    shortLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 20.0f, 200.f, 60.0f)];
    shortLabel.backgroundColor = [UIColor greenColor];
    shortLabel.text = @"Short Ride Track";
    shortLabel.numberOfLines = 2;
    shortLabel.textAlignment = NSTextAlignmentCenter;
    shortLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:shortLabel];
    
    // Short track Calculation Label
    shortCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 85.0f, 200.f, 60.0f)];
    shortCalc.backgroundColor = [UIColor greenColor];
    shortCalc.text = @"Short Ride Calculation";
    shortCalc.numberOfLines = 2;
    shortCalc.textAlignment = NSTextAlignmentCenter;
    shortCalc.textColor = [UIColor whiteColor];
    
    [self.view addSubview:shortCalc];
    
    // Medium track label
    mediumLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 180.0f, 200.f, 60.0f)];
    mediumLabel.backgroundColor = [UIColor blueColor];
    mediumLabel.text = @"Medium Ride Track";
    mediumLabel.numberOfLines = 2;
    mediumLabel.textAlignment = NSTextAlignmentCenter;
    mediumLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:mediumLabel];
    
    // Medium track Calculation
    mediumCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 245.0f, 200.f, 60.0f)];
    mediumCalc.backgroundColor = [UIColor blueColor];
    mediumCalc.text = @"Medium Ride Calculation";
    mediumCalc.numberOfLines = 2;
    mediumCalc.textAlignment = NSTextAlignmentCenter;
    mediumCalc.textColor = [UIColor whiteColor];

    [self.view addSubview:mediumCalc];
    
    // Long track label
    longLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 340.0f, 200.f, 60.0f)];
    longLabel.backgroundColor = [UIColor purpleColor];
    longLabel.text = @"Long Ride Track";
    longLabel.numberOfLines = 2;
    longLabel.textAlignment = NSTextAlignmentCenter;
    longLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:longLabel];
    
    // Long track Calculation
    
    longCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 405.0f, 200.f, 60.0f)];
    longCalc.backgroundColor = [UIColor purpleColor];
    longCalc.text = @"Long Ride Calculation";
    longCalc.numberOfLines = 2;
    longCalc.textAlignment = NSTextAlignmentCenter;
    longCalc.textColor = [UIColor whiteColor];
    
    [self.view addSubview:longCalc];

    
    // Creating the short track ride for Gavin
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
