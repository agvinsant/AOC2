//
//  factory.h
//  AOC2 Week2
//
//  Created by Adam Vinsant on 3/13/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "base.h"
#import "shortRoute.h"
#import "mediumRoute.h"
#import "longRoute.h"

@interface factory : NSObject

+(base*)createNewTrailRide:(int)biker;

@end
