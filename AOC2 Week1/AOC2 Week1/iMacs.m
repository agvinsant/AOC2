//
//  iMacs.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "iMacs.h"

@implementation iMacs

@synthesize iMacScreenSize, iMacPricePerSize, iMacApp;

// initializing...setting defaults...
-(id)init
{
    self=[super init];
    if (self !=nil)
    {
        [self setIMacScreenSize:21];
        [self setIMacPricePerSize:1299];
        [self setIMacApp:169];

    }
    return self;
};

-(void)calculatePrice
{
    [self setPrice: (iMacPricePerSize + iMacApp)];
    NSLog(@"The subtotal of this iMac with Apple Care Protection is %i.", self.price);
}

@end
