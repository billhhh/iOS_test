//
//  touchView.h
//  Storyboard1
//
//  Created by 黄 hshd1234 on 12-12-13.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchViewDelegate

-(void)touchMoved:(NSString *)x andY:(NSString *)y;
-(void)touchBegined:(NSString *)x andY:(NSString *)y;

@end



@interface touchView : UIView {
    
    NSMutableArray *pointArr_1;
    NSMutableArray *pointArr_2;
    
    NSMutableArray *currentArr_1;
    NSMutableArray *currentArr_2;
    
    id <TouchViewDelegate> delegate;
}
@property (nonatomic,assign)id <TouchViewDelegate> delegate;

@property (nonatomic,retain)NSMutableArray *pointArr_1;
@property (nonatomic,retain)NSMutableArray *pointArr_2;

@property (nonatomic,retain)NSMutableArray *currentArr_1;
@property (nonatomic,retain)NSMutableArray *currentArr_2;

-(void)serverTouchBegin:(NSString *)x andY:(NSString *)y;
-(void)serverTouchMoved:(NSString *)x andY:(NSString *)y;

@end
