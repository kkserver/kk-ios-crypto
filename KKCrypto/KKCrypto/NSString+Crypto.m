//
//  NSString+Crypto.m
//  KKHttp
//
//  Created by zhanghailong on 2016/11/28.
//  Copyright © 2016年 kkserver.cn. All rights reserved.
//

#import "NSString+Crypto.h"
#import "NSData+Crypto.h"

@implementation NSString (Crypto)

-(NSString *) KKMD5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] KKMD5String];
}

@end
