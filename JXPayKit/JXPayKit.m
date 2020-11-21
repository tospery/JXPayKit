//
//  JXPayKit.m
//  Pods
//
//  Created by 杨建祥 on 2020/11/21.
//

#import "JXPayKit.h"

@interface JXPayKit()
@property (nonatomic, strong, nullable) NSDictionary *providers;

@end

@implementation JXPayKit

- (NSDictionary *)providers {
    if (!_providers) {
        _providers = [[NSDictionary alloc] init];
    }
    return  _providers;
}

- (void)registerPlatform:(JXPayPlatform)platform
                provider:(JXPayProvider *)provider {
    __weak typeof(self) weakSelf = self;
    [provider registerPlatform:platform completion:^(NSError * _Nullable error) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if (error != nil) {
            NSString *key = [NSString stringWithFormat:@"%ld", (long)platform];
            [strongSelf.providers setValue:provider forKey:key];
        }
    }];
}

+ (instancetype)sharedInstance {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}

@end
