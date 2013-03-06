//
//  macFactory.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseDevice.h"
#import "iMacs.h"
#import "macBookPro.h"
#import "iPads.h"

@interface macFactory : NSObject

+(baseDevice *)createNewDevice: (int)deviceType;

@end
