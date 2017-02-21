//
//  ViewController.h
//  writeToFiletest
//
//  Created by 黄 hshd1234 on 12-12-15.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (weak, nonatomic) IBOutlet UIButton *btSave;
@property (weak, nonatomic) IBOutlet UIButton *btRead;
@property (weak, nonatomic) UITextField *filePath;


- (IBAction)dataSave:(id)sender;
- (IBAction)dataRead:(id)sender;
- (IBAction)backgroundClick:(id)sender;

- (NSString *)getPath;

@end
