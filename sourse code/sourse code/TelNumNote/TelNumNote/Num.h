//
//  Num.h
//  TelNumNote
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Num : UIViewController <UITableViewDelegate , UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;

@property (nonatomic , retain) NSArray *dataArray;

@end
