//
//  ViewController.m
//  writeToFiletest
//
//  Created by 黄 hshd1234 on 12-12-15.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize txt1;
@synthesize txt2;
@synthesize btSave;
@synthesize btRead;
@synthesize filePath;



-(NSString *)getPath
{
    return filePath.text;
}

- (IBAction)dataSave:(id)sender {
    NSString *namePath = [self getPath];
    NSArray *value = [[NSArray alloc]initWithObjects:@"i'm wanghu",@"num is 15111258647", nil];
    //数组自带的方法  writeToFile
    [value writeToFile:namePath atomically:YES];
}

- (IBAction)dataRead:(id)sender {
    NSString *path = [self getPath];
    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:path];

    
    if (fileExist)
    {
        NSArray *value = [[NSArray alloc] initWithContentsOfFile:path];
        
        //对应 save 里面的数组下标为0
        [txt1 setText:[value objectAtIndex:0]];
        [txt2 setText:[value objectAtIndex:1]];
    }
    
    else
    {
         [[[UIAlertView alloc] initWithTitle:@"To Ensure Is There Any Files" message:@"No Files here !!" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:nil] show];
    }
}

- (IBAction)backgroundClick:(id)sender {
    [filePath resignFirstResponder];
}









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
    [self setTxt1:nil];
    [self setTxt2:nil];
    [self setBtSave:nil];
    [self setBtRead:nil];
    [self setFilePath:nil];
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

@end
