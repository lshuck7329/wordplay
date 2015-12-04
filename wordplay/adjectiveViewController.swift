//
//  adjectiveViewController.swift
//  wordplay
//
//  Created by student3 on 11/11/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class adjectiveViewController: UIViewController {

    @IBOutlet weak var adjectiveTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter An Adjective"

    }

            override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                if segue.identifier == "madLibViewController" {
                    let adjectiveSender = segue.destinationViewController as! madLibViewController
                    adjectiveSender.inputs = adjectiveTextfield.text!
                }

    }
    
}
