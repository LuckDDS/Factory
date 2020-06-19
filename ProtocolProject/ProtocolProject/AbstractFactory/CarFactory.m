//
//  CarFactory.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "CarFactory.h"

@implementation CarFactory
static Car * car;
+ (instancetype)singleFactory{
    static CarFactory *factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        factory = [[CarFactory alloc]init];
        car = [Car new];
    });
    return factory;
    
}

- (id<AbstractCar>)getCar{
    return car;
}

@end
