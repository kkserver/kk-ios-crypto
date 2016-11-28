//
//  NSData+Crypto.m
//  KKHttp
//
//  Created by zhanghailong on 2016/11/28.
//  Copyright © 2016年 kkserver.cn. All rights reserved.
//

#import "NSData+Crypto.h"
#import<CommonCrypto/CommonCrypto.h>

@implementation NSData (Crypto)

-(NSString *) KKMD5String {
    
    CC_MD5_CTX md;
    
    CC_MD5_Init(&md);
    
    CC_MD5_Update(&md, [self bytes], (CC_LONG) [self length]);
    
    unsigned char vs[16];
    
    CC_MD5_Final(vs, &md);
    
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"
            ,vs[0],vs[1],vs[2],vs[3],vs[4],vs[5],vs[6],vs[7]
            ,vs[8],vs[9],vs[10],vs[11],vs[12],vs[13],vs[14],vs[15]];
    
}

@end
