//
//  mBookPro.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "mBookPro.h"

@implementation mBookPro

@synthesize mBookPrice, screenOptions, taxes, mBookApp;

// custom init for mac book pro options
-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        // setting data members to defaults
        [self setMBookPrice:1199];
        [self setTaxes:1.06];
        [self setMBookApp:249];
        [self setScreenOptions:@"There are two models of the Macbook Pro, the 13 inch and 15 inch both in either standard or retina display models."];
    }
    return self;
};
// calculating the total price for a macbook pro with APP plus FL state taxes
-(void)calculatePrice
{
    [self setPrice: (mBookPrice + mBookApp * taxes)];
    NSLog(@"The final price for the standard 13 inch Macbook Pro is %d", self.price);
}



@end
