//
//  ViewController.swift
//  Persistent Data Tutorial
//
//  Created by Voss, Garrett on 4/18/18.
//  Copyright © 2018 Voss, Garrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var contact: Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate //gives us access to the core data methods from the appDelegate.swift file
        let context = appDelegate.persistentContainer.viewContext // creates the context for the data
        contact = Contact(context: context) // initializes a contact object from the core data
        
        
        contact?.name = "Bob"
        appDelegate.saveContext() // saves to persistent data
        
        // as! is how we cast in swift
        
        
        let userDefault = UserDefaults.standard // stored dictionary that stores preferences
        userDefault.set("Myvalue", forKey: "A key")
        userDefault.synchronize() // stores the changes in app memory
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

