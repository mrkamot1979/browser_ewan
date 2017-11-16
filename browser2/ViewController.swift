//
//  ViewController.swift
//  browser2
//
//  Created by Nino Rorudan on 11/5/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    
    @IBAction func searchButton(_ sender: Any)
    {
    
    
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        //URL for the session
        let url = URL(string: "https://www.dictionary.com/browse/dog?s=t")
        
        //this is a completion hander, essentially it executes AFTER the task is complete
        //when task is complete, we are going to get 3 variables, data, response and error.
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            
        //mechanism below is essentially the basic way to load an image onto the app.  
        //first is you make sure you have an ImageView in the Main Story Board, specify the URL, specify the Task Completion 
        //and use an if / else mechanism to specify if there is an error or not in the image
            
            if error != nil
            {
                print("ERROR")
            }
            else
            {
                if let content = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                {
                    print(content)
                }
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

