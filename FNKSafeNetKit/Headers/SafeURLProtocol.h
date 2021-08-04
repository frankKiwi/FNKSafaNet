//
//  SafeURLProtocol.h
//  SafeRequestBlockDemo
//
//  Created by Frank on 2018/8/26.
//  Copyright © 2018年 Frank. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface SafeURLProtocol : NSURLProtocol
@property (nonatomic, copy) NSURLRequest *(^requestBlock)(NSURLRequest *request);
+(instancetype)sharedInstance;
@end
