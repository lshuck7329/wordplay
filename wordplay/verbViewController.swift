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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let verbSender = segue.destinationViewController as! madLibViewController
        verbSender.verb = verbTextfield.text!
    }

    
    @IBOutlet weak var verbNextButton: UIButton!
    
}
