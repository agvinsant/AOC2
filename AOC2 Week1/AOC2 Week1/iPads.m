//
//  iPads.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "iPads.h"

@implementation iPads

@synthesize padPrice, padApp, employeeDiscount, taxes;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setPadPrice:499];
        [self setPadApp:99];
        [self setTaxes:1.06];
        [self setDiscount:125];
        [self setEmployeeDiscount:@"As an Apple employee I get $125.00 off of an iPad!"];
        
        
    }
    return self;
};

-(void)calculatePrice
{
    [self setPrice: (padPrice + padApp - 125 * taxes)];
    NSLog(@"I got my iPad cheap for being an Apple employee!");
}
@end
