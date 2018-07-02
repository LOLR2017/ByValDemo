//
//  ValueObject.m
//  ByValDemo
//
//  Created by 赵文龙 on 2018/7/2.
//  Copyright © 2018年 zhaowenlong. All rights reserved.
//

#import "ValueObject.h"
static ValueObject *manager = nil;
@implementation ValueObject

+ (ValueObject *)shareValueObject {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ValueObject alloc] init];
    });
    return manager;
}


@end
