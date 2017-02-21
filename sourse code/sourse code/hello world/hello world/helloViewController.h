//
//  helloViewController.h
//  hello world
//
//  Created by 黄 hshd1234 on 12-11-20.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

//两个并列的委托
@interface helloViewController : UIViewController <UITextFieldDelegate , UIAlertViewDelegate>

@property (retain, nonatomic) IBOutlet UILabel *mylable;  //显示名字的lable
@property (retain, nonatomic) IBOutlet UIButton *mybotton; //显示我名字的button
@property (retain, nonatomic) IBOutlet UIButton *namebotton;    //用于显示任何名字
@property (retain, nonatomic) IBOutlet UITextField *mytext;     //显示任何名字的 text
@property (retain, nonatomic) IBOutlet UILabel *numlabel;          //滑条的lable


-(IBAction) backgroundresign:(id) parameter;                    //resign firstresponder
-(IBAction)onClick:(id)sender;                            //用于显示我名字的action
-(IBAction)displayinputname:(id)sender;                        //显示任何名字 action
-(IBAction)changeslider:(id)havechanged;                   //用于滑动滑条后调用改变num  action


//显示王琥的小方法，被 onClick 调用
- (NSString *) getFullName : (NSString *) firstname LastName : (NSString *) lastname; 

@end
