//
//  JXPayKit.h
//  Pods
//
//  Created by 杨建祥 on 2020/11/21.
//

#import <Foundation/Foundation.h>
#import "JXPayError.h"
#import "JXPayProvider.h"

NS_ASSUME_NONNULL_BEGIN

@interface JXPayKit : NSObject

+ (instancetype)sharedInstance;

- (void)registerPlatform:(JXPayPlatform)platform
                provider:(JXPayProvider *)provider;

@end

NS_ASSUME_NONNULL_END
