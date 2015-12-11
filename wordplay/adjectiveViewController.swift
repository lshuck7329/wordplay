//
//  adjectiveViewController.swift
//  wordplay
//
//  Created by student3 on 11/11/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class adjectiveViewController: UIViewController {

    var words3 = words(noun: "", verb: "", adjective: "")
    
    @IBOutlet weak var adjectiveTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter An Adjective"

    }

    @IBAction func adjectiveButton(sender: AnyObject) {
        words3.adjective = adjectiveTextfield.text!
        
        if (adjectiveTextfield.text!.isEmpty)
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
        let adjectiveSender = segue.destinationViewController as! madLibViewController
        adjectiveSender.inputs = words3
    }
}
