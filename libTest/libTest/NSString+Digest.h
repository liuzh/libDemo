//
//  NSString+Digest.h
//  libTest
//
//  Created by mac on 15/8/2.
//  Copyright (c) 2015年 com.liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Digest)
//md5 16位加密
- (NSString *)md5To16Bit;

//md5 32位加密
- (NSString *)md5To32Bit;
@end
