//
//  AFSecurity.m
//  HuoGameBox
//
//  Created by LWW on 2020/9/10.
//  Copyright © 2020 huosdk. All rights reserved.
//

#import "AFSecurity.h"
@implementation AFSecurity
// 自定义安全策略
+ (AFSecurityPolicy *)customSecurityPolicy {
    
    // 获取证书
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaoQi" ofType:@"cer"];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSSet *pinnedCertificates = [[NSSet alloc] initWithObjects:certData, nil];

    /*
     安全模式
     AFSSLPinningModeNone：完全信任服务器证书；
     AFSSLPinningModePublicKey：只比对服务器证书和本地证书的Public Key是否一致，如果一致则信任服务器证书；
     AFSSLPinningModeCertificate：比对服务器证书和本地证书的所有内容，完全一致则信任服务器证书
     */
    AFSecurityPolicy *securityPolicy =
    [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey
                     withPinnedCertificates:pinnedCertificates];
    
    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    securityPolicy.allowInvalidCertificates = YES;
    
    /*
    validatesDomainName 是否需要验证域名，默认为YES；
    假如证书的域名与你请求的域名不一致，需把该项设置为NO；
    如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。
    因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；
    当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    如置为NO，建议自己添加对应域名的校验逻辑。
     */
    securityPolicy.validatesDomainName = YES;
    
    return securityPolicy;
}
@end
