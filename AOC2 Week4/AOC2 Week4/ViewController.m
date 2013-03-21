//
//  ViewController.m
//  AOC2 Week4
//
//  Created by Adam Vinsant on 3/20/13.
//  Copyright (c) 2013 Adam Vinsant. All rights reserved.
//

#import "ViewController.h"
#import "addEvent.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipeRight)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swiperight addGestureRecognizer:rightSwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// sending to the textView from the addEvent view

-(void)didSave:(NSString *)nameString
{
    NSString *eventString = nameString;
    
    if([eventList.text isEqualToString:@""])
    {
        eventList.text = nameString;
    }
    else
    {
        eventList.text = [eventList.text stringByAppendingString:eventString];
    }
}

-(IBAction)clearList:(id)sender
{
    eventList.text = @"";
}

-(void)onSwipeRight:(UISwipeGestureRecognizer*)seeSwipeRight
{
   if(seeSwipeRight.direction == UISwipeGestureRecognizerDirectionRight)
   {
       addEvent *eventInfo = [[addEvent alloc]initWithNibName:@"addEvent" bundle:nil];
       
       // Clearing out the textview
       
       if ([eventList.text isEqualToString:@"Dates shown here"])
       {
           eventList.text = @"";
       }
       if (eventInfo !=nil)
       {
           // calling the delegate
           eventInfo.delegate = self;
           
           [self presentViewController:eventInfo animated:true completion:nil];
       }

   }
}


@end
