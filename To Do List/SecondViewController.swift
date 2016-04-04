//
//  SecondViewController.swift
//  To Do List
//
//  Created by Henry Lukoma on 4/3/16.
//  Copyright © 2016 Henry Lukoma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var item: UITextField!
    
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        //Add new item to array
        toDoList.append(item.text!)
        
        //Clear text field for user to input next item
        item.text = ""
        
        //Update NSUser default with new item
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Closes key board when user taps outside of the keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        item.resignFirstResponder()
        return true
    }

}

