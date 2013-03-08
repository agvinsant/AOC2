//
//  ViewController.h
//  AOC2 Week1
//
//  Created by Adam Vinsant on 3/5/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "trailFactory.h"

@interface ViewController : UIViewController

{
    UILabel *shortLabel;
    UILabel *mediumLabel;
    UILabel *longLabel;
    UILabel *shortCalc;
    UILabel *mediumCalc;
    UILabel *longCalc;
    UIButton *shortButton;
    UIButton *mediumButton;
    UIButton *longButton;
    
}

- (void)onClick: (UIButton*)button;

@end
