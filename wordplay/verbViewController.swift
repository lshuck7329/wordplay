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
    
    var words2 = words(noun: "", verb: "", adjective: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter A Verb"
        
    }
    
    @IBAction func verbButton(sender: AnyObject) {
        words2.verb = verbTextfield.text!
        
        if (verbTextfield.text!.isEmpty)
        {
            let alert = UIAlertController(title: "", message: "", preferredStyle: .Alert)
            alert.title = "There Is No Text"
            alert.message = "Please Enter Text Above"
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(defaultAction)
            
            presentViewController(alert, animated: true, completion: nil)
        }

    }

        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                let verbSender = segue.destinationViewController as! adjectiveViewController
                verbSender.words3 = words2
        }
}
