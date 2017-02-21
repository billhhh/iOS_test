//
//  AppDelegate.h
//  multiple view1
//
//  Created by 黄 hshd1234 on 12-12-12.
//  Copyright (c) 2012年 呼喊. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UINavigationController *nc;
}

@property (strong, nonatomic) UIWindow *window;


//多视图就不能用这个了
//@property (strong, nonatomic) ViewController *viewController;

@end
