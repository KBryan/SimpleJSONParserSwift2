//
//  ViewController.swift
//  SwiftJSONParsing2
//
//  Created by KBryan on 2015-12-05.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var jsonData:NSData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // var fileError:NSError?
        var jsonError:NSError?
        //
        
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
    }
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

