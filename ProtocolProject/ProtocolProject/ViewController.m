//
//  ViewController.m
//  ProtocolProject
//
//  Created by 董德帅 on 2020/6/19.
//  Copyright © 2020 九天. All rights reserved.
//

#import "ViewController.h"

#import "ManageFactory.h"
#import "CarFactory.h"
#import "BusCarFactory.h"

#import "MiFactory.h"
#import "HuaWeiFactory.h"

#import "MyProtocolUtil.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //以下所有内容是否采用单例模式,由实际情况决定
    self.view.backgroundColor = [UIColor whiteColor];
    //工厂模式
    [self factory];
    //抽象工厂模式
    [self abstractFactory];
    //使用组合替代继承
    [self groupFunction];
    // Do any additional setup after loading the view.
    
}

/// 工厂模式
- (void)factory{
    
    id<AbstractPhone> miPhone = [MiFactorySingle makePhone];
    [miPhone call];
    
    id<AbstractPhone> hwPhone = [HuaWeiFactorySingle makePhone];
    [hwPhone call];
    
}
/// 抽象工厂模式
- (void)abstractFactory{
    
    id <AbstractFactory> carFac = [ManageFactorySingle getCarFactory:CarFactoryType];
    id <AbstractCar> car = [carFac getCar];
    [car run];
    
    
    id <AbstractFactory> busCarFac = [ManageFactorySingle getCarFactory:BusCarFactoryType];
    id <AbstractCar> busCar = [busCarFac getCar];
    [busCar run];
}
/// 组合替换继承,一些方法可能多个不同的类用到,他们没有共同的父类的话,建议使用组合,组合的意思就是新建一个类,这个类里面有多个类需要访问的方法
- (void)groupFunction{
    
    [MyProtocolUtil uploadData];
    NSLog(@"1");
    [MyProtocolUtil uploadData];
    NSLog(@"2");
    [MyProtocolUtil uploadData];
    NSLog(@"3");
    [MyProtocolUtil uploadData];
    NSLog(@"4");
    
}

@end
