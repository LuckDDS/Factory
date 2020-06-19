//
//  MiFactory.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "MiFactory.h"
#import "MiPhone.h"
@implementation MiFactory
static MiPhone * miPhone;
+ (instancetype)singleMiFactory{
    static MiFactory * factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        factory = [[MiFactory alloc]init];
        miPhone = [MiPhone new];
    });
    return factory;
}

- (id <AbstractPhone>)makePhone{
    return miPhone;
}
@end
