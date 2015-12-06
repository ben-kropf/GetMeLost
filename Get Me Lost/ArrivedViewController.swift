//
//  ArrivedViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/6/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit
import Spring

class ArrivedViewController: UIViewController {

    @IBOutlet weak var heartButton: SpringButton!
    @IBOutlet weak var twitterImageView: SpringImageView!
    @IBOutlet weak var facebookImageView: SpringImageView!
    @IBOutlet weak var googleImageView: SpringImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        heartButton.tintColor = UIColor.whiteColor()
        
        let twitterTapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("twitterTapped:"))
        twitterImageView.userInteractionEnabled = true
        twitterImageView.addGestureRecognizer(twitterTapGestureRecognizer)
        
        let facebookTapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("facebookTapped:"))
        facebookImageView.userInteractionEnabled = true
        facebookImageView.addGestureRecognizer(facebookTapGestureRecognizer)
        
        let googleTapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("googleTapped:"))
        googleImageView.userInteractionEnabled = true
        googleImageView.addGestureRecognizer(googleTapGestureRecognizer)
        
    }
    
    func twitterTapped(img: AnyObject) {
        twitterImageView.animation = "pop"
        twitterImageView.animate()
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.twitter.com/")!)
    }
    
    func facebookTapped(img: AnyObject) {
        facebookImageView.animation = "pop"
        facebookImageView.animate()
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.facebook.com/")!)
    }
    
    func googleTapped(img: AnyObject) {
        googleImageView.animation = "pop"
        googleImageView.animate()
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.plus.google.com/")!)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func heartButtonPressed(sender: AnyObject) {
        heartButton.animation = "pop"
        heartButton.animate()
        
        if heartButton.tintColor == UIColor.whiteColor() {
            heartButton.tintColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        } else {
            heartButton.tintColor = UIColor.whiteColor()
        }
    }
    
    @IBAction func startAnotherAdventureButtonPressed(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
