//
//  TipCalculatorAppDelegate.m
//  TipCalculator
//
//  Created by Gravitt, Robert on 11/18/08.
//  Copyright Generic Heavy Industries 2008. All rights reserved.
//
//
// $Rev$
// $Author$
// $Date$
// $Id$
//


#import "TipCalculatorAppDelegate.h"
#import "MyViewController.h"

@implementation TipCalculatorAppDelegate

@synthesize window;
@synthesize myViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    MyViewController *aViewController = [[MyViewController alloc]
										 initWithNibName:@"ControllerView" bundle:[NSBundle mainBundle]];
	self.myViewController = aViewController;
	[aViewController release];
	
	UIView *backgroundView = [[UIView alloc] initWithFrame: window.frame];
	backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"viewBackground.png"]];
	[window addSubview:backgroundView];
	[backgroundView release];
	
	UIView *controllersView = [myViewController view];
	controllersView.backgroundColor = [UIColor clearColor];
	[window addSubview:controllersView];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [myViewController release];
	[window release];
    [super dealloc];
}


@end
