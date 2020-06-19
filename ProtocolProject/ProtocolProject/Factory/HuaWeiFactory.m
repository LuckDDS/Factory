//
//  HuaWeiFactory.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "HuaWeiFactory.h"
#import "HuaWeiPhone.h"
@implementation HuaWeiFactory
static HuaWeiPhone * hwPhone;
+(instancetype)singlrHuaWeiFactory{
    static HuaWeiFactory * factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        factory = [HuaWeiFactory new];
        hwPhone = [HuaWeiPhone new];
    });
    return factory;
    
}

- (id <AbstractPhone>)makePhone{
    return hwPhone;
}
@end
