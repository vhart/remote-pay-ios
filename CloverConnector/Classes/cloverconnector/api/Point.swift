/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */

import Foundation
import ObjectMapper




public class Point:Mappable {

  public var x:Int? = nil
  public var y:Int? = nil

  public required init() {

  }

  required public init?(_ map: Map) {
    //
  }

  public func mapping(map:Map) {
    x <- map["x"]
    y <- map["y"]
  }

/*
  public required init(jsonObj:NSDictionary){
    super.init()

  x = jsonObj.valueForKey("x") as! Int?

  y = jsonObj.valueForKey("y") as! Int?
  }
*/

}
