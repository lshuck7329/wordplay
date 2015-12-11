//
//  madLibViewController.swift
//  wordplay
//
//  Created by student3 on 11/11/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class madLibViewController: UIViewController {
    
    @IBOutlet weak var finalSentence: UILabel!
    
        var inputs = words(noun: "", verb: "", adjective: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Final Mad Lib"
        finalSentence.text = "One day a " + "\(inputs.adjective) " + "\(inputs.noun) " + "\(inputs.verb) " + "to a priest."
        
        
        
    }

        
}
