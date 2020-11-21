//
//  JXPayError.h
//  JXPayKit
//
//  Created by 杨建祥 on 2020/11/21.
//

#ifndef JXPayError_h
#define JXPayError_h

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, JXPayErrorCode) {
    JXPayErrorCodeInvalidArguments = 1
};

NSError * jxpay_error(JXPayErrorCode code) {
    return [NSError errorWithDomain:@"JXPayKit" code:code userInfo:@{NSLocalizedDescriptionKey: @""}];
}


#endif /* JXPayError_h */
