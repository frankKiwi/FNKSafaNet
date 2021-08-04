//
//  NSURLSession+SafeHttpProxy.h
//  SafeRequestBlockDemo
//
//  Created by Frank on 2019/4/10.
//  Copyright © 2019 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLSession (SafeHttpProxy)
+(void)disableHttpProxy;
+(void)enableHttpProxy;
@end

NS_ASSUME_NONNULL_END
