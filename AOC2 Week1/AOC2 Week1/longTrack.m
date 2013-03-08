//
//  longTrack.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "longTrack.h"

@implementation longTrack

@synthesize numberMiles, timeEachMile, breakTime, totalMinutesPerMile;

// initializing the data for the long track ride by Adam setting defaults.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberMiles:0];
        [self setTimeEachMile:0];
        [self setBreakTime:0];
    }
    return self;
}

// calculating ride time and amount of time per mile.
-(void)calculateRideTime
{
    //Total ride time minus water break
    [self setTimeInMinutes:(numberMiles * timeEachMile - breakTime)];
    
    //Calculating the average amount of time per mile
    [self setTotalMinutesPerMile: (self.timeInMinutes / numberMiles)];
}

@end
