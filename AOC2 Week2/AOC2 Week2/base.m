//
//  base.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "base.h"

@implementation base

@synthesize timeInMin, milesRidden;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTimeInMin:0];
        [self setMilesRidden:nil];
    }
    return self;
}

//Calculation of run time.
-(void)calculateRideTime
{
    NSLog(@"The rider has ridden for %i minutes.", timeInMin);
}



@end
