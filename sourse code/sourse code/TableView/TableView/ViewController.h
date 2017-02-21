//
//  ViewController.h
//  TableView
//
//  Created by 黄 hshd1234 on 12-12-14.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>


//两个协议的实现
@property(nonatomic,strong) NSDictionary *name;
@property(nonatomic,strong) NSArray *namekey;

@end
