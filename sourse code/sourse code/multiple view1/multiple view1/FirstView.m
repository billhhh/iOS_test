//
//  FirstView.m
//  multiple view1
//
//  Created by 黄 hshd1234 on 12-12-12.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "FirstView.h"
#import "SecondView.h"

@implementation FirstView
@synthesize txt;
@synthesize flable;


-(void)ChangeView:(id)sender
{
    SecondView *svc = [[SecondView alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
    //[svc.label setText:fvc.txt.text];
    NSString *slb = txt.text;
    [svc.label setText:slb];
    [self.flable setText:slb];
    //[self.navigationController pushViewController:svc animated:YES];
}






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
    
    self.title = @"This is FirstView";
    
    //可以让返回键的字符内容改变
    //self.navigationItem.backBarButtonItem.title = @"11";          //不过这么写无效
    UIBarButtonItem *backbarcontent = [[UIBarButtonItem alloc]init];
    backbarcontent.title = @"yep";
    self.navigationItem.backBarButtonItem = backbarcontent;
}

- (void)viewDidUnload
{
    [self setTxt:nil];
    [self setFlable:nil];
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
