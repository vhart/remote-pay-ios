//
//  OrderActionAddDiscountMessage.swift
//  CloverSDKRemotepay
//
//  
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation
import ObjectMapper

public class OrderActionAddDiscountMessage : Message {
    public var addDiscountAction:AddDiscountAction?
    
    public required init?(_ map:Map) {
        super.init(method: .ORDER_ACTION_ADD_DISCOUNT)
    }
    
    public override func mapping(map:Map) {
        super.mapping(map)
        addDiscountAction <- map["addDiscountAction"]
    }
}
