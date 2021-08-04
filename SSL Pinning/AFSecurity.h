//
//  AFSecurity.h
//  HuoGameBox
//
//  Created by LWW on 2020/9/10.
//  Copyright © 2020 huosdk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFSecurityPolicy.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFSecurity : NSObject
+ (AFSecurityPolicy *)customSecurityPolicy;
@end

NS_ASSUME_NONNULL_END
