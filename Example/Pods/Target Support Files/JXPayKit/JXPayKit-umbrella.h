#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "JXAlipayProvider.h"
#import "JXApplePayProvider.h"
#import "JXPayKit.h"
#import "JXWXPayProvider.h"

FOUNDATION_EXPORT double JXPayKitVersionNumber;
FOUNDATION_EXPORT const unsigned char JXPayKitVersionString[];

