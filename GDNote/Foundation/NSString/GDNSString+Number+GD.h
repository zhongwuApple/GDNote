//
//  GDNSString+Number+GD.h
//  GDProject
//
//  Created by tiger on 2018/10/16.
//  Copyright © 2018年 tiger. All rights reserved.
//
//  所有的计算中 小数位不保留 0 例如 1.0 字符串输出是 1。
#import <Foundation/Foundation.h>



@interface NSString (GDNSString_Number_GD)


- (BOOL)gd_isZero;



/**
 比较2个字符串数值大小  self 与 num1 比较  NSOrderedDescending 意味 self 大于 num1,
 
 @param num1  比较对象
 @return       NSOrderedAscending  升序 , NSOrderedSame 相等, NSOrderedDescending 降序
 */
- (NSComparisonResult )gd_compareWithNumber:(NSString *)num1;


#pragma mark 加减乘除

/**
 大数据相加  舍位
 
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_addWithNumber:(NSString *)num1 scale:(short)scale;


/**
 大数据相加
 @param num1 数字
 @param scale 保留小数位有效数字
 @param roundingMode 进位 舍位
 */
- (NSString *)gd_addWithNumber:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode;




/**
 大数据相减
 
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_subWithNumber:(NSString *)num1 scale:(short)scale;

- (NSString *)gd_subWithNumber:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode;




/**
 大数据相减
 
 @param num1 数字1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_decimalNumberByMultiplyingBy:(NSString *)num1 scale:(short)scale;

- (NSString *)gd_decimalNumberByMultiplyingBy:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode;




/**
 大数据相除
 
 @param num1
 @param scale 保留小数位有效数字
 */
- (NSString *)gd_decimalNumberByDividingBy:(NSString *)num1 scale:(short)scale;

- (NSString *)gd_decimalNumberByDividingBy:(NSString *)num1 scale:(short)scale decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode;



























@end
