//
//  ManageFactory.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "ManageFactory.h"
#import "CarFactory.h"
#import "BusCarFactory.h"
@implementation ManageFactory

+ (instancetype)singleManageFactory{
    static ManageFactory *factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        factory = [[ManageFactory alloc]init];
    });
    return factory;
}

- (id<AbstractFactory>)getCarFactory:(FactoryType)type{
    if (type == CarFactoryType) {
        return CarFactorySingle;
    }else if (type == BusCarFactoryType){
        return BusCarFactorySingle;
    }
    return nil;
}

@end
