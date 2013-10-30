//
//  MyViewController.h
//  TipCalculator
//
//  Created by Gravitt, Robert on 11/18/08.
//  Copyright 2008 Generic Heavy Industries. All rights reserved.
//
//
// $Rev$
// $Author$
// $Date$
// $Id$
//


#import <UIKit/UIKit.h>


@interface MyViewController : UIViewController {
	UITextField *billField;
	UITextField *tipField;
	UILabel *tipAmount;
	UILabel *totalAmount;

}

@property (nonatomic, retain) IBOutlet UITextField *billField;
@property (nonatomic, retain) IBOutlet UITextField *tipField;
@property (nonatomic, retain) IBOutlet UILabel *tipAmount;
@property (nonatomic, retain) IBOutlet UILabel *totalAmount;
- (IBAction)calculateTip:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField;

@end
