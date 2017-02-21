//
//  ViewController.h
//  button press
//
//  Created by 黄 hshd1234 on 12-12-6.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *botton1;
@property (weak, nonatomic) IBOutlet UIButton *botton2;
@property (weak, nonatomic) IBOutlet UILabel *l;
- (IBAction)push:(id)sender;

@end
