//
//  ThirdViewController.h
//  ByValDemo
//
//  Created by 赵文龙 on 2018/6/28.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ThirdViewControllerDelegate <NSObject>

-(void)finishValue:(NSString *)string;

@end

@interface ThirdViewController : UIViewController

@property (weak,nonatomic) id<ThirdViewControllerDelegate> delegate;

@end
