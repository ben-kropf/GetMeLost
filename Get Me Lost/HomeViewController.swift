//
//  ViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/2/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit
import Spring

class HomeViewController: UIViewController {
    
    let transitionManager = TransitionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addFilterSegue" {
            let uploadViewController = segue.destinationViewController as! UINavigationController
            uploadViewController.transitioningDelegate = transitionManager
        }
    }

}


