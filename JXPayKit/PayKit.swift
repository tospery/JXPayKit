//
//  PayKit.swift
//  JXPayKit
//
//  Created by 杨建祥 on 2020/11/21.
//

import Foundation

public enum PayPlatform: CustomStringConvertible {
    case applepay(productId: String)
    case wxpay
    case alipay
    
    public var description: String {
        switch self {
        case let .applepay(productId):
            return "ApplePay with productId = \(productId)"
        default:
            return "Undefined"
        }
    }
}

final public class PayKit {
    
    init() {
    }

}
