//
//  ViewController.m
//  TableView
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController










//基本的属性实现方式
@synthesize name,namekey;

//返回当前节点行的长度
//指定每个分区中有多少行，默认为1
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [name count];
}

//返回当前一个列的内容 的实现
//绘制Cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"mycell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
     
    //lazy loading
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStateShowingEditControlMask reuseIdentifier:cellId];
    }//  UITableViewCell  每一行的容器

    [[cell textLabel] setText: [namekey objectAtIndex:[indexPath row]]];
    NSString *telName = [name objectForKey:[namekey objectAtIndex:[indexPath row]]];
    
    
    //赋值给容器
    [[cell detailTextLabel] setText: telName];
    
    
    //附件类型
    {
        //cell.accessoryType = UITableViewCellAccessoryCheckmark;  //对勾
        
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;  //蓝箭头
        
        //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;  //灰箭头
    }
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //通过  [NSBundle mainBundle] 对象的  pathForResource 方法获取文件路径 有了 bundle 对象，就可以对其中的文件进行操作了
    NSString *namePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"plist"];
    name = [[NSDictionary alloc] initWithContentsOfFile:namePath];
    namekey = [name allKeys];
}











- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
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
