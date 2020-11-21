//
//  JXPayProvider.m
//  JXPayKit
//
//  Created by 杨建祥 on 2020/11/21.
//

#import "JXPayProvider.h"

@interface JXPayProvider()
@property (nonatomic, strong, readwrite, nullable) NSString *appId;
@property (nonatomic, strong, readwrite, nullable) NSString *universalLink;

@end

@implementation JXPayProvider

- (instancetype)initWithAppId:(nullable NSString *)appId
                universalLink:(nullable NSString *)universalLink {
    if (self = [super init]) {
        self.appId = appId;
        self.universalLink = universalLink;
    }
    return  self;
}

- (void)registerPlatform:(JXPayPlatform)platform
              completion:(void (^)(NSError * _Nullable error))completion {
    completion(nil);
}

@end
