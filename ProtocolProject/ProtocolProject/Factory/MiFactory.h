//
//  MiFactory.h
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractPhone.h"

NS_ASSUME_NONNULL_BEGIN
#define MiFactorySingle [MiFactory singleMiFactory]
@interface MiFactory : NSObject

+ (instancetype)singleMiFactory;
- (id <AbstractPhone>)makePhone;

@end

NS_ASSUME_NONNULL_END
