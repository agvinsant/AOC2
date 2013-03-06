//
//  baseDevice.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "baseDevice.h"

@implementation baseDevice

// synthesize creates get and set methods for each property
@synthesize features, type, price;

// initializing the base device.
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setPrice:0];
        [self setFeatures:nil];
        type=nil;
    }
    return self;
}

@end
