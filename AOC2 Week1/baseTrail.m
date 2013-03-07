//
//  baseTrail.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "baseTrail.h"

@implementation baseTrail

@synthesize bikeType, milesRidden, timeInMinutes;

//Initializing the default trail ride and setting ride time to zero. Setting for Gavin's short track ride.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTimeInMinutes:0];
        [self setBikeType:nil];
        [self setMilesRidden:nil];
    }
    return self;
}

//Calculation of run time.
-(void)calculateRideTime
{
    NSLog(@"The rider has ridden for %i minutes.", timeInMinutes);
}


@end
