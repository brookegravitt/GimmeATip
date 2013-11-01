//
//  MyViewController.m
//  TipCalculator
//
//  Created by Gravitt, Robert on 11/18/08.
//  Copyright 2008 Generic Heavy Industries. All rights reserved.
//
// $Rev$
// $Author$
// $Date$
// $Id$


#import "MyViewController.h"

@implementation MyViewController
//@implementation MyViewController:UIViewController<UITextFieldDelegate>

@synthesize billField;
@synthesize tipField;
@synthesize tipAmount;
@synthesize totalAmount;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [tipField resignFirstResponder];
    [billField resignFirstResponder];
}

- (IBAction)calculateTip:(id)sender {
	
    NSDecimalNumber *billAmt = [NSDecimalNumber decimalNumberWithString:billField.text];
	NSString *tipString = tipField.text;
	NSDecimalNumber *tipAmt = [NSDecimalNumber decimalNumberWithString:tipString];

	NSDecimalNumber *totalAmt;
	NSDecimalNumber *tipPct;
	tipPct = [tipAmt decimalNumberByMultiplyingByPowerOf10:-2];
    NSDecimalNumber *tipFactor;
	tipFactor = [tipPct decimalNumberByAdding:[NSDecimalNumber one]];

	tipAmt = [billAmt decimalNumberByMultiplyingBy:tipPct];
	totalAmt = [billAmt decimalNumberByAdding:tipAmt];

	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	[numberFormatter setGeneratesDecimalNumbers:YES];
	[numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
	[numberFormatter setPositiveFormat:@"$ 0.00;$ 0.00;$ -0.00"];
	
	[tipAmount setText:[numberFormatter stringFromNumber:tipAmt]];
	[tipAmount setNeedsDisplay];
	[totalAmount setText:[numberFormatter stringFromNumber:totalAmt]];
	[totalAmount setNeedsDisplay];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (void)dealloc {
	[billField release];
    [tipField release];
	[tipAmount release];
	[totalAmount release];
    [super dealloc];
}


@end
