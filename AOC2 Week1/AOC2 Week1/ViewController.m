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

    // Setting background color
    self.view.backgroundColor = [UIColor grayColor];
    
    
    // creating labels for the track types
    // Short track label
    shortLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 50.0f, 200.f, 90.0f)];
    shortLabel.backgroundColor = [UIColor greenColor];
    shortLabel.text = @"Short Ride Track";
    shortLabel.numberOfLines = 3;
    shortLabel.textAlignment = NSTextAlignmentCenter;
    shortLabel.textColor = [UIColor grayColor];
    
    [self.view addSubview:shortLabel];
    
    // Short track Calculation Label
    shortCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 145.0f, 200.f, 90.0f)];
    shortCalc.backgroundColor = [UIColor greenColor];
    shortCalc.text = @"Short Ride Calculation";
    shortCalc.numberOfLines = 3;
    shortCalc.textAlignment = NSTextAlignmentCenter;
    shortCalc.textColor = [UIColor grayColor];
    
    [self.view addSubview:shortCalc];
    
    // Medium track label
    mediumLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 240.0f, 200.f, 90.0f)];
    mediumLabel.backgroundColor = [UIColor blueColor];
    mediumLabel.text = @"Medium Ride Track";
    mediumLabel.numberOfLines = 3;
    mediumLabel.textAlignment = NSTextAlignmentCenter;
    mediumLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:mediumLabel];
    
    // Medium track Calculation
    mediumCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 335.0f, 200.f, 90.0f)];
    mediumCalc.backgroundColor = [UIColor blueColor];
    mediumCalc.text = @"Medium Ride Calculation";
    mediumCalc.numberOfLines = 3;
    mediumCalc.textAlignment = NSTextAlignmentCenter;
    mediumCalc.textColor = [UIColor whiteColor];

    [self.view addSubview:mediumCalc];
    
    // Long track label
    longLabel = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 430.0f, 200.f, 90.0f)];
    longLabel.backgroundColor = [UIColor purpleColor];
    longLabel.text = @"Long Ride Track";
    longLabel.numberOfLines = 3;
    longLabel.textAlignment = NSTextAlignmentCenter;
    longLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:longLabel];
    
    // Long track Calculation
    
    longCalc = [[UILabel alloc]initWithFrame:CGRectMake(50.0f, 525.0f, 200.f, 90.0f)];
    longCalc.backgroundColor = [UIColor purpleColor];
    longCalc.text = @"Long Ride Calculation";
    longCalc.numberOfLines = 3;
    longCalc.textAlignment = NSTextAlignmentCenter;
    longCalc.textColor = [UIColor whiteColor];
    
    [self.view addSubview:longCalc];

    
        
        
        // Going a little above and beyond... Adding info button functions to activate the labels... :)
    
    // Short info button
    shortButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    shortButton.frame = CGRectMake(300.0f, 140.0f, 20.0f, 20.0f);
    shortButton.tag = 0;
    [shortButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shortButton];
    
    // Medium info button
    mediumButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    mediumButton.frame = CGRectMake(300.0f, 330.0f, 20.0f, 20.0f);
    mediumButton.tag = 1;
    [mediumButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:mediumButton];
    
    // Long info button
    longButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    longButton.frame = CGRectMake(300.0f, 520.0f, 20.0f, 20.0f);
    longButton.tag = 2;
    [longButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:longButton];


    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick: (UIButton*)button
{
    // I like the switch statement here with the case expressions, easier to use.
    // Could also use if conditionals...
    
    
    switch (button.tag){
        case 0:
        {
            // Creating the short track ride data for Gavin
            
            shortTrack *gavinRide = (shortTrack*)[trailFactory createNewTrailRide:GAVIN];
            [gavinRide setNumberMiles:5];
            [gavinRide setTimePerMile:6];
            
            if (gavinRide !=nil)
            {
                
                NSArray *gavinBike = [[NSArray alloc]initWithObjects:@"20 inch BMX bike", nil];
                NSMutableString *bike = [[NSMutableString alloc]initWithString:@""];
                for (int i=0; i<[gavinBike count];i++)
                {
                    [bike insertString:([gavinBike objectAtIndex:0]) atIndex:0];
                }
                [gavinRide setBikeType:gavinBike];
                [gavinRide calculateRideTime];
                shortLabel.text = [NSString stringWithFormat:@"Gavin is riding a %@ .", bike];
                shortCalc.text = [NSString stringWithFormat:@"Miles: %i, Minutes: %i", gavinRide.numberMiles, gavinRide.timeInMinutes];
            }
            

            
        }
            
            break;
            
           
        case 1:
        {
            //Creating the medium track data for Shelly
            
            mediumTrack *shellyRide = (mediumTrack*)[trailFactory createNewTrailRide:SHELLY];
            [shellyRide setNumberMiles:15];
            [shellyRide setTimePerMile:5];
            [shellyRide setBreakTime:10];
            
            if (shellyRide !=nil)
            {
                
                NSArray *shellyBike = [[NSArray alloc]initWithObjects:@"cruiser bike", nil];
                NSMutableString *bike = [[NSMutableString alloc]initWithString:@""];
                for (int i=0; i<[shellyBike count];i++)
                {
                    [bike insertString:([shellyBike objectAtIndex:0]) atIndex:0];
                }
                [shellyRide setBikeType:shellyBike];
                [shellyRide calculateRideTime];
                mediumLabel.text = [NSString stringWithFormat:@"Shelly is riding a %@ .", bike];
                mediumCalc.text = [NSString stringWithFormat:@"Miles: %i, Time: %i mins, Breaks: %i mins", shellyRide.numberMiles, shellyRide.timeInMinutes, shellyRide.breakTime];
            }
            

        }
            
            break;
            
            
        case 2:
        {
            // Creating the long track data for Adam
            
            longTrack *adamRide = (longTrack*)[trailFactory createNewTrailRide:ADAM];
            [adamRide setNumberMiles:30];
            [adamRide setTimeEachMile:4];
            [adamRide setBreakTime:15];
            
            if (adamRide !=nil)
            {
                
                NSArray *adamBike = [[NSArray alloc]initWithObjects:@"hybrid road bike", nil];
                NSMutableString *bike = [[NSMutableString alloc]initWithString:@""];
                for (int i=0; i<[adamBike count];i++)
                {
                    [bike insertString:([adamBike objectAtIndex:0]) atIndex:0];
                }
                [adamRide setBikeType:adamBike];
                [adamRide calculateRideTime];
                longLabel.text = [NSString stringWithFormat:@"Adam is riding a %@ .", bike];
                longCalc.text = [NSString stringWithFormat:@"Miles: %i, Time: %i mins, Breaks: %i mins, MinsPerMile: %i", adamRide.numberMiles, adamRide.timeInMinutes, adamRide.breakTime, adamRide.totalMinutesPerMile];
            }
            

        }
    }
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
