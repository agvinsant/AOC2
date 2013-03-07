//
//  iMacs.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "baseDevice.h"

@interface iMacs : baseDevice

// data members for device prices. Each size has a different starting price. A 21.5 inch iMac starts at $1299, and a 27 inch iMac starts at $1799. The APP is the cost of the Apple Care Protection. 

@property int iMacScreenSize;
@property int iMacPricePerSize;
@property int iMacApp;

@end
