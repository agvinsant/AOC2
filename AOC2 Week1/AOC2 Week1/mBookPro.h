//
//  mBookPro.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/7/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "baseDevice.h"

@interface mBookPro : baseDevice
{
    int size;
}

typedef enum{
    STANDARD,
    RETINA
} size;

@property int mBookSize;
@property NSString *screenOptions;
@property float taxes;
@property int mBookApp;
@end
