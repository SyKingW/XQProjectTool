//
//  NSString+HexadecimalConversion.h
//  MQTTProject
//
//  Created by WXQ on 2018/3/22.
//  Copyright © 2018年 ConfidenceCat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HexadecimalConversion)

/**
 温湿度16进制转10进制
 */
- (NSString *)xq_HTHexadecimalTransferDecimal;

/**
 16转10, self是16进制字符串
 */
- (NSString *)xq_hexadecimalTransferDecimal;;

/**
 16转10
 */
+ (NSString *)xq_hexadecimalTransferDecimalWithStr:(NSString *)str;

/**
 10 转 2进制
 */
+ (NSString *)getBinaryByDecimal:(NSInteger)decimal;

@end