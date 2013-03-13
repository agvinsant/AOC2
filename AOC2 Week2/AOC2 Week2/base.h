//
//  base.h
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface base : NSObject

{
    int bikerEnum;
}

typedef enum
{
    GAVIN,
    SHELLY,
    ADAM
} bikerEnum;

//data for miles ridden and time in minutes

@property NSString *milesRidden;
@property int timeInMin;

//Initalize
-(id)init;

//Calculating ride time
-(void)calculateRideTime;

@end
