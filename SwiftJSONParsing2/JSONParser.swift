import Foundation

class JSONParser {
    
    class func parse(data:NSData, inout error:NSError?) -> JSON? {
        
        do {
            let parsedObject:AnyObject? = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
            
            if let obj: AnyObject = parsedObject  {
                return JSON( parsedObject: obj )
            }
        } catch {
            print("failed")
        }
        return nil
    }
}
