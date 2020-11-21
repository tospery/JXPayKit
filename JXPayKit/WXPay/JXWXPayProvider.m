//
//  JXWXPayProvider.m
//  Pods
//
//  Created by 杨建祥 on 2020/11/21.
//

#import "JXWXPayProvider.h"
#import "WXApi.h"

@interface JXWXPayProvider()

@end

@implementation JXWXPayProvider

- (void)registerPlatform:(JXPayPlatform)platform
              completion:(void (^)(NSError * _Nullable))completion {
    //        WXApi.startLog(by: .detail) { message in
    //            log("微信SDK: \(message)")
    //        }
    //        let ret = WXApi.registerApp("wx604d16af6a3c95de", universalLink: "https://xunyou.com/accelerator/")
    //        log("微信SDK注册\(ret ? "成功" : "失败")")
    [WXApi startLogByLevel:WXLogLevelDetail logBlock:^(NSString * _Nonnull log) {
        NSLog(@"【JXPayKit】%@", log);
    }];
    if (self.appId.length == 0 || self.universalLink.length == 0) {
        // completion(jxpay)
        return;
    }
    BOOL ret = [WXApi registerApp:self.appId universalLink:self.universalLink];
}

@end
