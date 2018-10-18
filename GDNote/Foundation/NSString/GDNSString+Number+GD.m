//
//  GDNSString+Number+GD.m
//  GDProject
//
//  Created by tiger on 2018/10/16.
//  Copyright © 2018年 tiger. All rights reserved.
//

#import "GDNSString+Number+GD.h"

@implementation NSString (GDNSString_Number_GD)

- (BOOL)gd_isZero{
    NSComparisonResult result = [self gd_compareWithNumber:@"0"];
    return (NSOrderedSame == result);
}

- (NSComparisonResult )gd_compareWithNumber:(NSString *)num1{
    NSString *num2 = [self copy];
    if (![num1 isKindOfClass:[NSString class]]) return NSOrderedAscending;
    NSDecimalNumber *decimalNum1 = [NSDecimalNumber decimalNumberWithString:num1];
    NSDecimalNumber *decimalNum2 = [NSDecimalNumber decimalNumberWithString:num2];
    NSComparisonResult result = [decimalNum2 compare:decimalNum1];
    return result;
}


#pragma mark 加减乘除

/**
 加法
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_addWithNumber:(NSString *)num1  scale:(short)scale{
    NSString *result = [self gd_addWithNumber:num1 scale:scale decimalNumberHandlerWithRoundingMode:NSRoundDown];
    return result;
}



/**
 加法
 @param num1 数字
 @param scale 保留小数位有效数字
 @param roundingMode 进位 舍位
 */
- (NSString *)gd_addWithNumber:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode{
    NSString *num2 = [self copy];
    if (![num1 isKindOfClass:[NSString class]] || 0 == num1.length) return num2;
    NSDecimalNumber *decimalNum1 = [NSDecimalNumber decimalNumberWithString:num1];
    NSDecimalNumber *decimalNum2 = [NSDecimalNumber decimalNumberWithString:num2];
    NSString *result = [self gd_addWithNum1:decimalNum1 decimalNum2:decimalNum2 scale:scale decimalNumberHandlerWithRoundingMode:roundingMode];
    return result;
}




/**
 大数据相减
 
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_subWithNumber:(NSString *)num1  scale:(short)scale{
    NSString *result = [self gd_subWithNumber:num1 scale:scale decimalNumberHandlerWithRoundingMode:NSRoundDown];
    return result;
}



- (NSString *)gd_subWithNumber:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode{
    NSString *num2 = [self copy];
    if (![num1 isKindOfClass:[NSString class]] || 0 == num1.length) return num2;
    
    NSDecimalNumberHandler *handler = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:roundingMode
                                       scale:scale
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSDecimalNumber *decimalNum1 = [NSDecimalNumber decimalNumberWithString:num1];
    NSDecimalNumber *decimalNum2 = [NSDecimalNumber decimalNumberWithString:num2];
    NSDecimalNumber *sumNum = [[decimalNum2 decimalNumberBySubtracting:decimalNum1] decimalNumberByRoundingAccordingToBehavior:handler];
    NSString *result = [NSString stringWithFormat:@"%@",sumNum];
    return result;
}



/**
 大数据相减
 
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_decimalNumberByMultiplyingBy:(NSString *)num1 scale:(short)scale{
    NSString *result = [self gd_decimalNumberByMultiplyingBy:num1 scale:scale decimalNumberHandlerWithRoundingMode:NSRoundDown];
    return result;
}

- (NSString *)gd_decimalNumberByMultiplyingBy:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode{
    NSString *num2 = [self copy];
    if (![num1 isKindOfClass:[NSString class]] || 0 == num1.length) return num2;
    
    NSDecimalNumberHandler *handler = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:roundingMode
                                       scale:scale
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSDecimalNumber *decimalNum1 = [NSDecimalNumber decimalNumberWithString:num1];
    NSDecimalNumber *decimalNum2 = [NSDecimalNumber decimalNumberWithString:num2];
    NSDecimalNumber *sumNum = [[decimalNum2 decimalNumberByMultiplyingBy:decimalNum1] decimalNumberByRoundingAccordingToBehavior:handler];
    NSString *result = [NSString stringWithFormat:@"%@",sumNum];
    return result;
}



/**
 大数据相除
 
 @param num1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_decimalNumberByDividingBy:(NSString *)num1 scale:(short)scale{
    NSString *result = [self gd_decimalNumberByDividingBy:num1 scale:scale decimalNumberHandlerWithRoundingMode:NSRoundDown];
    return result;
}


- (NSString *)gd_decimalNumberByDividingBy:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode{
    
    NSString *num2 = [self copy];
    if (![num1 isKindOfClass:[NSString class]] || 0 == num1.length || num1.gd_isZero) return num2;
    
    NSDecimalNumberHandler *handler = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:roundingMode
                                       scale:scale
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSDecimalNumber *decimalNum1 = [NSDecimalNumber decimalNumberWithString:num1];
    NSDecimalNumber *decimalNum2 = [NSDecimalNumber decimalNumberWithString:num2];
    NSDecimalNumber *sumNum = [[decimalNum2 decimalNumberByDividingBy:decimalNum1] decimalNumberByRoundingAccordingToBehavior:handler];
    NSString *result = [NSString stringWithFormat:@"%@",sumNum];
    return result;
}


//添加浮点类型
- (NSString *)gd_addNum1:(double)num1 num2:(double)num2 scale:(short)scale{
  
    NSString *str1 = @"";
    NSString *str2 = @"";
    [str1 gd_addWithNumber:str2 scale:4];
    return nil;
}









#pragma mark 基础类型







- (NSString *)gd_addWithNum1:(NSDecimalNumber *)decimalNum1 decimalNum2:(NSDecimalNumber *)decimalNum2 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode{
    
    NSDecimalNumberHandler *handler = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:roundingMode
                                       scale:scale
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSDecimalNumber *sumNum = [[decimalNum1 decimalNumberByAdding:decimalNum2] decimalNumberByRoundingAccordingToBehavior:handler];
    NSString *result = [NSString stringWithFormat:@"%@",sumNum];
    return result;
    
    
}











@end










































