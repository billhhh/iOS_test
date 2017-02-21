//
//  Save.h
//  TelNumNote
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Save : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UIButton *btSave;
@property (weak, nonatomic) IBOutlet UIButton *btRead;
@property (nonatomic , retain) NSArray *Result;

-(IBAction)endEdit:(id)sender;
-(IBAction)backgroundClick:(id)sender;
- (IBAction)dataSave:(id)sender;
- (IBAction)dataRead:(id)sender;
- (IBAction)clear:(id)sender;

-(NSString *)getPath;           //获取文件路径
-(IBAction)DeleteAll:(id)sender;   //删除文件信息

@end
