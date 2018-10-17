//
//  GDTestStringNumCalculator.m
//  GDNoteTests
//
//  Created by tiger on 2018/10/17.
//  Copyright © 2018 tiger. All rights reserved.
//
//  NString 对数字 的加减乘除计算
#import <XCTest/XCTest.h>
#import "GDNSString+Number+GD.h"

@interface GDTestStringNumCalculator : XCTestCase

@end

@implementation GDTestStringNumCalculator

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {

}

- (void)testAdd{
    NSString *number1 = [@"1" gd_addWithNumber:@"2.0145" scale:3];
    NSString *number2 = [@"1" gd_addWithNumber:@"2.0145" scale:1];
    NSString *target1 = @"3.014";
    NSString *target2 = @"3";
    XCTAssertTrue([number1 isEqualToString:target1]);
    XCTAssertTrue([number2 isEqualToString:target2]);
}


- (void)testsub{
    NSString *number1 = [@"1" gd_subWithNumber:@"2.9801" scale:4];
    NSString *number2 = [@"3" gd_subWithNumber:@"1.5" scale:1];
    NSString *target1 = @"-1.9801";
    NSString *target2 = @"1.5";
    XCTAssertTrue([number1 isEqualToString:target1]);
    XCTAssertTrue([number2 isEqualToString:target2]);
}


- (void)testMul{
    NSString *number1 = [@"1" gd_decimalNumberByMultiplyingBy:@"0.0" scale:4];
    NSString *number2 = [@"1" gd_decimalNumberByMultiplyingBy:@"0.1" scale:4];
    NSString *number3 = [@"1" gd_decimalNumberByMultiplyingBy:@"2" scale:4];
    NSString *target1 = @"0";
    NSString *target2 = @"0.1";
    NSString *target3 = @"2";
    XCTAssertTrue([number1 isEqualToString:target1]);
    XCTAssertTrue([number2 isEqualToString:target2]);
    XCTAssertTrue([number3 isEqualToString:target3]);
}

-(void)testDiv{    
    NSString *number1 = [@"1" gd_decimalNumberByDividingBy:@"0.0" scale:4];
    NSString *number2 = [@"10" gd_decimalNumberByDividingBy:@"3" scale:4];
    NSString *number3 = [@"100" gd_decimalNumberByDividingBy:@"50" scale:4];
    NSString *target1 = @"1";
    NSString *target2 = @"3.3333";
    NSString *target3 = @"2";
    XCTAssertTrue([number1 isEqualToString:target1]);
    XCTAssertTrue([number2 isEqualToString:target2]);
    XCTAssertTrue([number3 isEqualToString:target3]);
    
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
