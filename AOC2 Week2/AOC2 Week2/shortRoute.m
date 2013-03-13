//
//  shortRoute.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "shortRoute.h"

@implementation shortRoute

@synthesize numberMiles, timePerMile;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberMiles:0];
        [self setTimePerMile:0];
    }
    return self;
}

// Calculating the ride time in minutes. Overiding the base.

-(void)calculateRideTime
{
    [self setTimeInMinutes:(timePerMile * numberMiles)];
}


@end
