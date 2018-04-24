//
//  ViewController.m
//  KP
//
//  Created by everyu on 2018/4/24.
//  Copyright © 2018年 everyu. All rights reserved.
//

#import "ViewController.h"
#import "Pointer.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testFunction];
    
}

- (void)testFunction
{
    [Pointer runFunction];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
