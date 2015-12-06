# SimpleJSONParserSwift2
Simplifies working with JSON in Swift 2
Usage:
```
        var jsonError:NSError?

        do {
           jsonData = try NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("Recipes", ofType:".json")!, options:NSDataReadingOptions.DataReadingMapped )
        } catch {
                print("error")
        }
      
        let json = JSONParser.parse(jsonData!, error: &jsonError)
        
        guard let j = json else {
            print("Error: Could not parse JSON. \(jsonError?.localizedDescription)")
            return
        }
        print( j[0]?["name"]?.stringValue)
        print( j[0]?["serves"]?.intValue)
```
