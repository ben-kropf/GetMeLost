//
//  DestinationFiltersTableViewController.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/5/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit

class DestinationFiltersTableViewController: UITableViewController {
    
    let destinations = ["Restaurants", "Parks", "Retail", "Landmarks", "Haunted", "Historic"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinations.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("destinationCell", forIndexPath: indexPath) as! DestinationTableViewCell
        cell.destinationLabel.text = destinations[indexPath.row]
        return cell
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    @IBAction func saveButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)

    }
}
