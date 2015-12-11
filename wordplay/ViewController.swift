//
//  ViewController.swift
//  wordplay
//
//  Created by student3 on 11/10/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nounTextfield: UITextField!

        var words1 = words(noun: "", verb: "", adjective: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter A Noun"
        
    }
    
    @IBAction func nounButton(sender: AnyObject)
    {
        words1.noun = nounTextfield.text!
        
        if (nounTextfield.text!.isEmpty)
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
        let nounSender = segue.destinationViewController as! verbViewController
        nounSender.words2 = words1
                
                    
    }

}
