//
//  helloViewController.m
//  hello world
//
//  Created by 黄 hshd1234 on 12-11-20.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import "helloViewController.h"

@implementation helloViewController
@synthesize namebotton;
@synthesize mytext; 
@synthesize numlabel;
@synthesize mylable;
@synthesize mybotton;


//按下return消掉键盘
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [mytext resignFirstResponder];
    return YES;
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
    
    //开始进程序的时候文本框打开    既变成FirstResponder
    //[mytext becomeFirstResponder];
    //[mybotton becomeFirstResponder];
}

- (void)viewDidUnload
{
    [self setMylable:nil];
    [self setMybotton:nil];
    [self setMytext:nil];
    [self setMylable:nil];
    [self setNumlabel:nil];
    [self setMytext:nil];
    [self setNamebotton:nil];
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

- (void)dealloc {
    [mylable release];
    [mybotton release];
    [mytext release];
    [mylable release];
    [numlabel release];
    [mytext release];
    [namebotton release];
    [super dealloc];
}



//点击背景隐藏按钮， 消掉键盘
//-(IBAction)backgroundresign:(id)parameter             //void、IBAction都可用！！！

-(void)backgroundresign:(id)parameter
{
    [mytext resignFirstResponder];
}






//显示我名字 action
- (IBAction)onClick:(id)sender {
    //调用名字函数
    NSString *fn = [self getFullName:@"Wang" LastName:@"Hu"];
    [mylable setText:fn];
    
    //弹出警告框   nil是空对象
    [[[UIAlertView alloc] initWithTitle:@"title" message:@"you'v see my name" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok1",@"ok2", nil] show];
    
    //test：如果 cancel 和 done 都为空
    /*[[[UIAlertView alloc] initWithTitle:@"title" message:@"you'v see my name" delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil] show];
    
    //下面不能用
    [UIAlertView show];     [UIAlertView release];*/
    
    
    //[fn release];
}
//显示王琥的小方法，被 onClick 调用
-(NSString *)getFullName:(NSString *)firstname LastName:(NSString *)lastname
{
    NSString *fullname = [NSString stringWithFormat:@"my name is : %@ %@" , firstname, lastname];
    //[fullname release];
    return fullname;
}
//alert委托
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //用NSlog直接控制输出，不过不在主屏幕上显示，只能在监视框显示
    //NSLog(@"%i",buttonIndex);                   //用buttonIndex看到底按的Alert上的什么键
    
    
    //用NSString先保存再用 UIAlertView* alert 控制输出
    NSString *msg = [[NSString alloc] initWithFormat:@"buddy,u'v pressed 'ok%d' button!",buttonIndex];
    
    
    //[msg release];
    
    if (buttonIndex == 1 || buttonIndex == 2) 
    {
        [[[UIAlertView alloc ]initWithTitle:@"提示"
                              message:msg
                              delegate:nil
                              cancelButtonTitle:@"确定"
                              otherButtonTitles:nil]show];
    }
    
    else
    {
        [[[UIAlertView alloc ]initWithTitle:@"提示"
                                    message:@"u want to leave??no!!"
                                   delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil]show];
    }
    
    [msg release];
}








//用于在文本框里面输入name然后显示的动作
- (IBAction)displayinputname:(id)sender {
    NSString *title = [[NSString alloc]init];
    //strcmp(title, (char)(mytext.text));
    
    title = mytext.text;
    
    //NSString *newstr = [[NSString alloc] initWithFormat:@"ur input name is %@!!",title];
    //[mylable setText: newstr];
    
    [mylable setText: title];
    
    //[newstr release];
}





//用于滑动滑条后调用改变num  action
-(IBAction)changeslider:(id)havechanged
{
    UISlider *slidernum = (UISlider *) havechanged;
    //NSLog(@"%i",(int)(slidernum.value));
    
    
    
    //n用于临时保存划块的num值
    int n = (int) (slidernum.value + 0.5f);
    NSString *finaldisplay = [[NSString alloc] initWithFormat:@"%d",n];
    
    
    //NSString *finaldisplay = (char)(slidernum.value);
    
    numlabel.text = finaldisplay;

    
    //[finaldisplay release];
    //[slidernum release];
}

@end
