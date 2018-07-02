//
//  ValueObject.h
//  ByValDemo
//
//  Created by 赵文龙 on 2018/7/2.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValueObject : NSObject

@property (strong,nonatomic) NSString *value;

+(ValueObject *)shareValueObject;

@end
