/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import Foundation
import ObjectMapper



public class VoidPaymentResponse:BaseResponse {

  public var paymentId:String?
    public var transactionNumber:String?
    public var voidReason:VoidReason?
    
    public init(success:Bool, result:ResultCode, paymentId:String?, transactionNumber:String?) {
        super.init(success: success, result: result)
        self.paymentId = paymentId
        self.transactionNumber = transactionNumber
    }
    
    required public init?(_ map: Map) {
        super.init(map)
    }
    
    public override func mapping(map: Map) {
        super.mapping(map)
        paymentId <- map["paymentId"]
        transactionNumber <- map["transactionNumber"]
        voidReason <- map["voidReason"]
    }

}

