//
//  trailFactory.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseTrail.h"
#import "shortTrack.h"
#import "mediumTrack.h"
#import "longTrack.h"

@interface trailFactory : NSObject

+(baseTrail*)createNewTrailRide:(int)biker;

@end
