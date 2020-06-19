//
//  AbstractFactory.h
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractCar.h"
NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFactory <NSObject>
- (id <AbstractCar>)getCar;
@end

NS_ASSUME_NONNULL_END
