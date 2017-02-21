//
//  helloagainViewController.h
//  helloagain
//
//  Created by 黄 hshd1234 on 12-12-5.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helloagainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *l;
@property (weak, nonatomic) IBOutlet UIButton *b;
- (IBAction)press:(id)sender;

@end
