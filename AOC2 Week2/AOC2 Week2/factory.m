//
//  factory.m
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "factory.h"

@implementation factory

+(base *)createNewTrailRide:(int)biker
{
    if (biker == GAVIN)
    {
        return [[shortRoute alloc]init];
    }else if (biker == SHELLY)
    {
        return [[mediumRoute alloc]init];
    }else if (biker == ADAM)
    {
        return [[longRoute alloc]init];
    }else
        return nil;
};

@end
