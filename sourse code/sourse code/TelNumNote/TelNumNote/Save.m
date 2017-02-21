//
//  Save.m
//  TelNumNote
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "Save.h"
#import "Num.h"

@implementation Save
@synthesize nameField;
@synthesize numberField;
@synthesize btSave;
@synthesize btRead;
@synthesize Result;


//获取文件路径
-(NSString *)getPath
{
    return @"log.txt";
}

- (IBAction)dataSave:(id)sender {
    NSMutableArray *value = [NSMutableArray arrayWithArray:Result];
    NSString *tmp1 = [[NSString alloc] initWithFormat:nameField.text];
    NSString *tmp2 = [[NSString alloc] initWithFormat:numberField.text];
    if (tmp1 == nil || tmp2 == nil) {
        return;
    }
    [value addObject:tmp1];
    [value addObject:tmp2];
    Result = value;
    [Result writeToFile:[self getPath] atomically:YES];
    
    //NSArray *value2 = [[NSArray alloc]initWithObjects:nameField.text,numberField.text, nil];
    //[value2 writeToFile:[self getPath] atomically:YES];
    //这个参数意思是如果为YES则保证文件的写入原子性,就是说会先创建一个临时文件,直到文件内容写入成功再导入到目标文件里.如果为NO,则直接写入目标文件里.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Input";
    Result = [[NSArray alloc] initWithContentsOfFile:[self getPath]];
}

- (IBAction)dataRead:(id)sender {
    NSString *path = [self getPath];
    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:path];
    
    if (fileExist) {
        //NSLog(@"%@",[self getPath]);
        Num *nvc = [[Num alloc]init];
        
        //把文件里面的数据读到数组中
        NSArray *value = [[NSArray alloc] initWithContentsOfFile:path];
        //[nameField setText:[value objectAtIndex:0] ];
        //[numberField setText:[value objectAtIndex:1]];
        
        //NSLog(@"%@",[value objectAtIndex:1]);
        
        //先加载再显现
        [self.navigationController pushViewController:nvc animated:YES];
        if (value.count==0)
            return;

        [nvc.txt1 setText:[value objectAtIndex:0]];
        [nvc.txt2 setText:[value objectAtIndex:1]];
    }
}



- (IBAction)clear:(id)sender {
    [nameField setText:nil];
    [numberField setText:nil];
}







//点击背景按钮 收起键盘
-(void)backgroundClick:(id)sender
{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}


//按回车结束输入
-(void)endEdit:(id)sender
{
    [sender resignFirstResponder];
}





-(void)DeleteAll:(id)sender
{
    NSString *path = [self getPath];
    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:path];
    
    if (fileExist) {
        NSMutableArray *dearray = [[NSMutableArray alloc] initWithContentsOfFile:path];
        [dearray removeLastObject];
        [dearray removeLastObject];
        Result = dearray;
        [Result writeToFile:[self getPath] atomically:YES];
    }
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

- (void)viewDidUnload
{
    [self setNameField:nil];
    [self setNumberField:nil];
    [self setBtSave:nil];
    [self setBtRead:nil];
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
