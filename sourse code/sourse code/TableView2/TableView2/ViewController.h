//
//  ViewController.h
//  TableView2
//
//  Created by 黄 hshd1234 on 12-12-15.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>{
    //可以不要
    NSArray *listData;
}

@property (nonatomic , retain ) NSArray *listData;

@end
