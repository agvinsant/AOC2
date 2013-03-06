//
//  macFactory.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "macFactory.h"

@implementation macFactory

+(baseDevice *)createNewDevice: (int)deviceType
{
    return [[iMacs alloc]init];
}

@end
