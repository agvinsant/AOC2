//
//  longRoute.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "longRoute.h"

@implementation longRoute

@synthesize numberMiles, timeEachMile, breakTime, totalMinPerMile;

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
    [self setTimeInMin:(numberMiles * timeEachMile - breakTime)];
    
    //Calculating the average amount of time per mile
    [self setTotalMinPerMile: (self.timeInMin / numberMiles)];
}


@end
