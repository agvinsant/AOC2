//
//  trailFactory.m
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "trailFactory.h"

@implementation trailFactory

+(baseTrail *)createNewTrailRide:(int)biker
{
  if (biker == GAVIN)
  {
      return [[shortTrack alloc]init];
  }else if (biker == SHELLY)
  {
      return [[mediumTrack alloc]init];
  }else if (biker == ADAM)
  {
      return [[longTrack alloc]init];
  }else
      return nil;
};

@end
