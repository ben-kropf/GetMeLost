//
//  TakeHomeViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/5/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit

class TakeHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

}
