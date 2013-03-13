//
//  mediumRoute.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "mediumRoute.h"

@implementation mediumRoute

@synthesize numberMiles, timePerMile, breakTime;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberMiles:0];
        [self setTimePerMile:0];
        [self setBreakTime:0];
    }
    return self;
    
}

-(void)calculateRideTime
{
    [self setTimeInMin:(timePerMile * numberMiles - breakTime)];
}


@end
