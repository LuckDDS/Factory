//
//  BusCarFactory.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "BusCarFactory.h"
#import "BusCar.h"
@implementation BusCarFactory
static BusCar * busCar;
+ (instancetype)singleBusCarFactory{
    static BusCarFactory * busCarFactory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        busCarFactory = [BusCarFactory new];
        busCar = [BusCar new];
    });
    return busCarFactory;
}

- (id<AbstractCar>)getCar{
    return busCar;
}

@end
