//
//  SecondView.m
//  multiple view1
//
//  Created by 黄 hshd1234 on 12-12-12.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView
@synthesize label;





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"This is SecondView";
    
    
    //在Second视图的右边加上一个按钮
    UIBarButtonItem *add = [[UIBarButtonItem alloc]initWithTitle:@"WOW!!" style:UIBarButtonItemStyleBordered target:self action:nil];
    self.navigationItem.rightBarButtonItem = add;
}

- (void)viewDidUnload
{
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
