//
//  MyProtocolUtil.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "MyProtocolUtil.h"

@implementation MyProtocolUtil

dispatch_semaphore_t semaphore;

+ (void)uploadData{
    fun();
    //防止同时操作
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"上传成功");
            sleep(1);
            dispatch_semaphore_signal(semaphore);
        });
    });
}
void fun(){
    NSLog(@"11");
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"111");
        semaphore = dispatch_semaphore_create(1);
    });
}
@end
