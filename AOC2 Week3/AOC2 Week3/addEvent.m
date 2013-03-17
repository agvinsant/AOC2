//
//  addEvent.m
//  AOC2 Week3
//
//  Created by Adam Vinsant on 3/17/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "addEvent.h"

@interface addEvent ()

@end

@implementation addEvent

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
     
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (hideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
      
    [super viewWillAppear:animated];
}

-(void)showKeyboard: (NSNotification *)notification
{
    
}

-(void)hideKeyboard: (NSNotification *)notification
{
    
}

-(IBAction)onClick:(id)sender
{
    []
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
