//
//  FirstView.h
//  multiple view1
//
//  Created by 黄 hshd1234 on 12-12-12.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstView : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txt;
@property (weak, nonatomic) IBOutlet UILabel *flable;

-(IBAction)ChangeView:(id)sender;

@end