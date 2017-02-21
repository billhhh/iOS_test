//
//  Num.m
//  TelNumNote
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "Num.h"
#import "Save.h"


@implementation Num
@synthesize txt1;
@synthesize txt2;
@synthesize dataArray;


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataArray count]/2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"%@",[fvc getPath]);
    
    //BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:path];
    
    //if (fileExist)
    {
        //NSLog(@"(Num) -> %@",data);
    }
    
    static NSString *cellId = @"mycellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStateShowingEditControlMask reuseIdentifier:cellId];
    }
    
    NSUInteger row = [indexPath row];
    //NSLog(@"%d",row);
    NSString *namestr = [[NSString alloc] initWithFormat:[dataArray objectAtIndex:row*2]];
    cell.textLabel.text = namestr;
    NSString *telnum = [[NSString alloc] initWithFormat:[dataArray objectAtIndex:row*2+1]];
    cell.detailTextLabel.text = telnum;
    

    return cell;
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
    //self.title = @"Note";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Note";
    dataArray = [[NSArray alloc]initWithContentsOfFile:@"log.txt"];
    //NSLog(@"(Num) -> %@",@"1");
}

- (void)viewDidUnload
{
    [self setTxt1:nil];
    [self setTxt2:nil];
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
