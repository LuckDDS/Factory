//
//  BusCarFactory.h
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractFactory.h"
NS_ASSUME_NONNULL_BEGIN
#define BusCarFactorySingle [BusCarFactory singleBusCarFactory]
@interface BusCarFactory : NSObject<AbstractFactory>
+ (instancetype)singleBusCarFactory;
@end

NS_ASSUME_NONNULL_END
