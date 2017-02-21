//
//  ViewController.m
//  button press
//
//  Created by 黄 hshd1234 on 12-12-6.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize botton1;
@synthesize botton2;
@synthesize l;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBotton1:nil];
    [self setBotton2:nil];
    [self setL:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)push:(id)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *newname =[NSString stringWithFormat: @"%@ has been pressed",title];
    [l setText:newname];
}

@end
