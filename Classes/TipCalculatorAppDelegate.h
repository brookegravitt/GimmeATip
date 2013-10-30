//
//  TipCalculatorAppDelegate.h
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

#import <UIKit/UIKit.h>
@class MyViewController;

@interface TipCalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	MyViewController *myViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MyViewController *myViewController;

@end

