//
//  ManageFactory.h
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractCar.h"
#import "AbstractFactory.h"
NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    CarFactoryType = 0,
    BusCarFactoryType,
} FactoryType;

#define ManageFactorySingle [ManageFactory singleManageFactory]
@interface ManageFactory : NSObject

+(instancetype)singleManageFactory;

- (id <AbstractFactory>)getCarFactory:(FactoryType)type;

@end

NS_ASSUME_NONNULL_END
