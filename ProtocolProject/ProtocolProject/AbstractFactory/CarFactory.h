//
//  CarFactory.h
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "AbstractFactory.h"
NS_ASSUME_NONNULL_BEGIN

#define CarFactorySingle [CarFactory singleFactory]

@interface CarFactory : NSObject<AbstractFactory>

/// 获取工厂
+ (instancetype)singleFactory;

@end

NS_ASSUME_NONNULL_END
