//
//  mBookPro.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "mBookPro.h"

@implementation mBookPro

@synthesize mBookSize, screenOptions, taxes, mBookApp;

// custom init for mac book pro options
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        // setting data members to defaults
        [self setPrice:0];
        [self setTaxes:1.06];
        [self setMBookApp:249];
    }
    return self;
};



@end
