//
//  mediumTrack.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "mediumTrack.h"

@implementation mediumTrack

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
    [self setTimeInMinutes:(timePerMile * numberMiles - breakTime)];
}

@end
