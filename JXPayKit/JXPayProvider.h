//
//  JXPayProvider.h
//  JXPayKit
//
//  Created by 杨建祥 on 2020/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, JXPayPlatform) {
    JXPayPlatformApplePay = 1,
    JXPayPlatformWXPay,
    JXPayPlatformAlipay
};

@interface JXPayProvider : NSObject
@property (nonatomic, strong, readonly, nullable) NSString *appId;
@property (nonatomic, strong, readonly, nullable) NSString *universalLink;

- (instancetype)initWithAppId:(nullable NSString *)appId
                universalLink:(nullable NSString *)universalLink;

- (void)registerPlatform:(JXPayPlatform)platform
              completion:(void (^)(NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
