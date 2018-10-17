//
//  ViewController.m
//  GDNote
//
//  Created by tiger on 2018/10/17.
//  Copyright © 2018 tiger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger number1  = 1;
    NSInteger number2  = 2;
    NSDecimalNumber *n1 = [NSDecimalNumber numberWithDouble:number1];
    NSDecimalNumber *n2 = [NSDecimalNumber numberWithDouble:number2];
    NSDecimalNumber *n3 = [n1 decimalNumberByDividingBy:n2];
    NSLog(@"%@", n3);
    
}


@end
