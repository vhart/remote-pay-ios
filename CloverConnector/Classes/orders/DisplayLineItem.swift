/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import Foundation
import ObjectMapper




public class DisplayLineItem:Mappable {

  /*
  * Unique identifier
   */
  public var id:String? = nil
  /*
  * The order with which the line item is associated
   */
  public var orderId:String? = nil
  /*
  * Line item name
   */
  public var name:String? = nil
  /*
  * Alternate name of the line item
   */
  public var alternateName:String? = nil
  /*
  * Formatted total price of the line item
   */
  public var price:String? = nil
  /*
  * Formatted unit price in cases if applicable
   */
  public var unitPrice:String? = nil
  /*
  * Formatted quantity
   */
  public var quantity:String? = nil
  /*
  * Formatted unit quantity - such as 10 @ $1.99/oz
   */
  public var unitQuantity:String? = nil
  public var note:String? = nil
  public var printed:Bool = false
  public var binName:String? = nil
  public var userData:String? = nil
  public var discounts:[DisplayDiscount]?
  public var discountAmount:String? = nil
  public var exchanged:Bool = false
  /*
  * Formatted exchanged amount
   */
  public var exchangedAmount:String? = nil
  public var modifications:[DisplayModification]? = nil
  public var refunded:Bool = false
  /*
  * Formatted refunded amount
   */
  public var refundedAmount:String? = nil
  public var percent:String? = nil 

  public required init() {

  }
    
  public init(id:String, name:String, price:String, quantity:String) {
      self.id = id
      self.name = name
      self.price = price
      self.quantity = quantity
  }

  required public init?(_ map: Map) {
  }

  public func mapping(map:Map) {
      id <- map["id"]

      orderId <- map["orderId"]

      name <- map["name"]

      alternateName <- map["alternateName"]

      price <- map["price"]

      unitPrice <- map["unitPrice"]

      quantity <- map["quantity"]

      unitQuantity <- map["unitQuantity"]

      note <- map["note"]

      printed <- map["printed"]

      binName <- map["binName"]

      userData <- map["userData"]

      discounts <- map["discounts.elements"]

      discountAmount <- map["discountAmount"]

      exchanged <- map["exchanged"]

      exchangedAmount <- map["exchangedAmount"]

      modifications <- map["modifications.elements"]

      refunded <- map["refunded"]

      refundedAmount <- map["refundedAmount"]

      percent <- map["percent"]

  }

/*
  public required init(jsonObj:NSDictionary){
    super.init()

  id = jsonObj.valueForKey("id") as! String?

  orderId = jsonObj.valueForKey("orderId") as! String?

  name = jsonObj.valueForKey("name") as! String?

  alternateName = jsonObj.valueForKey("alternateName") as! String?

  price = jsonObj.valueForKey("price") as! String?

  unitPrice = jsonObj.valueForKey("unitPrice") as! String?

  quantity = jsonObj.valueForKey("quantity") as! String?

  unitQuantity = jsonObj.valueForKey("unitQuantity") as! String?

  note = jsonObj.valueForKey("note") as! String?

  printed = jsonObj.valueForKey("printed") as! Bool

  binName = jsonObj.valueForKey("binName") as! String?

  userData = jsonObj.valueForKey("userData") as! String?

  discounts = ListWrapper<DisplayDiscount>(jsonObj: jsonObj.valueForKey("discounts") as! NSDictionary)


  discountAmount = jsonObj.valueForKey("discountAmount") as! String?

  exchanged = jsonObj.valueForKey("exchanged") as! Bool

  exchangedAmount = jsonObj.valueForKey("exchangedAmount") as! String?

  modifications = ListWrapper<DisplayModification>(jsonObj: jsonObj.valueForKey("modifications") as! NSDictionary)


  refunded = jsonObj.valueForKey("refunded") as! Bool

  refundedAmount = jsonObj.valueForKey("refundedAmount") as! String?

  percent = jsonObj.valueForKey("percent") as! String?
  }
*/

}

