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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var theNoun: String = (nounTextfield.text)!
        
        var theWordNoun = words(Noun: theNoun)

    }
    
            override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                if segue.identifier == "madLibViewController" {
                    let nounSender = segue.destinationViewController as! madLibViewController
                    nounSender.inputs = theWordNoun
                    
                }
        

    }
}
