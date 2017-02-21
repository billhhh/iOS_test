//
//  ViewController.h
//  dataSaved
//
//  Created by 黄 hshd1234 on 12-12-13.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (weak, nonatomic) IBOutlet UIButton *btSave;
@property (weak, nonatomic) IBOutlet UIButton *btRead;


- (IBAction)dataSave:(id)sender;
- (IBAction)dataRead:(id)sender;
- (NSString *) getPath;

@end
