//
//  ViewController.m
//  dataSaved
//
//  Created by 黄 hshd1234 on 12-12-13.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize txt1;
@synthesize txt2;
@synthesize btSave;
@synthesize btRead;

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















/*
- (IBAction)dataSave:(id)sender {
    NSArray *value = [[NSArray alloc]initWithObjects:txt1.text,txt2.text, nil];
    //数组自带的方法  writeToFile
    [value writeToFile:[self getPath] atomically:YES];
}
*/
- (IBAction)dataSave:(id)sender {
    NSArray *value = [[NSArray alloc]initWithObjects:@"wanghu",@"15111258647", nil];
    //数组自带的方法  writeToFile
    [value writeToFile:@"/logtest.txt" atomically:YES];
}



- (IBAction)dataRead:(id)sender {
    NSString *path = @"/logtest.txt";
    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:path];
    if (fileExist) {
        NSArray *value = [[NSArray alloc] initWithContentsOfFile:path];
        
        //对应 save 里面的数组下标为0
        [txt1 setText:[value objectAtIndex:0]];
        [txt2 setText:[value objectAtIndex:1]];
    }
}



-(NSString *)getPath
{
    
    //固定的格式
    //NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //return [[pathArray objectAtIndex:0] stringByAppendingPathComponent:@"mydata.txt"];
    
    return @"/log.txt";
}


@end
