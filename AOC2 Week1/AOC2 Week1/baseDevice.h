//
//  baseDevice.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/6/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseDevice : NSObject

{
    int deviceEnum;
}

typedef enum {
    iMac,
    macBookPro,
    iPad

} deviceEnum;

// data is used for price, type of device (ie. desktop, laptop, mobile), and features (i.e. Screen size, RAM, hard drive storage).
@property NSArray *features;
@property NSString *type;
@property int price;

// initialize
-(id)init;

// calculation/manipulation to find cost of the device with tax and addons
-(void)calculatePrice;


@end
