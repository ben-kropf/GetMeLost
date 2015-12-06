//
//  MenuViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/5/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit
import Spring

class MenuViewController: UIViewController {

    @IBOutlet weak var menuView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func closeButtonPressed(sender: AnyObject) {
        menuView.animation = "zoomOut"
        menuView.animate()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func takeMeHomeButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func settingsButtonPressed(sender: AnyObject) {
        let alertView = UIAlertController(title: "Oops!", message: "This page is not yet implemented.", preferredStyle: .Alert)
        let okayButton = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alertView.addAction(okayButton)
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    
    @IBAction func profileButtonPressed(sender: AnyObject) {
        let alertView = UIAlertController(title: "Oops!", message: "This page is not yet implemented.", preferredStyle: .Alert)
        let okayButton = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alertView.addAction(okayButton)
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    
}
