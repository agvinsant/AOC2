//
//  shortTrack.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "shortTrack.h"

@implementation shortTrack

@synthesize numberMiles, timeInMinutes, timePerMile;

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

-(void)calcRideTime
{
    [self setTimeInMinutes:(timePerMile * numberMiles)];
}

@end
