//
//  NSString+Digest.m
//  libTest
//
//  Created by mac on 15/8/2.
//  Copyright (c) 2015年 com.liu. All rights reserved.
//

#import "NSString+Digest.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Digest)

- (NSString *)md5To16Bit{
    //提取32位MD5散列的中间16位
    NSString *md5_32Bit_String=[self md5To32Bit];
    NSString *result = [[md5_32Bit_String substringToIndex:24] substringFromIndex:8];//即9～25位
    return result;
}

- (NSString *)md5To32Bit{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, strlen(cStr), digest );
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    
    return result;
}
@end
