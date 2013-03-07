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
        [self setType:nil];
        
    }
    return self;
}

// calculation/manipulation to find cost of the device with tax and addons
-(void)calculatePrice
{
    NSLog(@"So I just walked into the Apple Store looking for a new toy. So far my total today is %i dollars.", price);
}

@end
