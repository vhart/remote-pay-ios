/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

public class SaleResponse:PaymentResponse {
    public init(success:Bool, result:ResultCode) {
        super.init(success:success, result:result)
    }

    required public init?(_ map: Map) {
        super.init(map)
    }
    
    public override func mapping(map: Map) {
        super.mapping(map)
    }
}
