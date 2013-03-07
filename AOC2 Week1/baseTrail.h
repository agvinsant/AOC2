//
//  baseTrail.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseTrail : NSObject

{
    int bikerEnum;
}

typedef enum
{
    GAVIN,
    SHELLY,
    ADAM
} bikerEnum;

//data for runners, array of shoes, run time in minutes, miles
@property NSArray *bikeType;
@property NSString *milesRidden;
@property int timeInMinutes;

//Initalize
-(id)init;

//Calculating ride time
-(void)calculateRideTime;
@end
