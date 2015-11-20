//
//  verbViewController.swift
//  wordplay
//
//  Created by student3 on 11/11/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class verbViewController: UIViewController {

    @IBOutlet weak var verbTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter A Verb"
        
    }
    
    @IBAction func verbNextButton(sender: AnyObject) {
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "madLibViewController" {
                let verbSender = segue.destinationViewController as! madLibViewController
                verbSender.verb = verbTextfield.text!
            }
    }

    }
    
 
    
}
