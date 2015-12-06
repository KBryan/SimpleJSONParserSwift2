# SimpleJSONParserSwift2
Simplifies working with JSON in Swift 2
Usage:

do {
           jsonData = try NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("Recipes", ofType:".json")!, options:NSDataReadingOptions.DataReadingMapped )
        } catch {
                print("error")
        }
      
        let json = JSONParser.parse(jsonData!, error: &jsonError)
        
        if let j = json {
            print( j[0]?["name"]?.stringValue)
            print( j[0]?["serves"]?.intValue)
        } else {
            print("Error: Could not parse JSON. \(jsonError?.localizedDescription)")
        }
