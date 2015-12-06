//
//  DirectionsViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/6/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit

class DirectionsViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let red = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        circleView.layer.borderColor = red.CGColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
