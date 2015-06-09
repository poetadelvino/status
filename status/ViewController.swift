//
//  ViewController.swift
//  status
//
//  Created by ernesto on 6/8/15.
//  Copyright (c) 2015 Pyramidia. All rights reserved.
//

import UIKit

/*  said in class by James:

ModelViewController

M.... is for Model
V.... is a view, very dum
C....   controller

a Model can be a User.  another kind of model is: Status

today we'll focus on the Model.   a model layer
every app has a model.

the famous one is the user model, or user class





we could have given this a better name, like StatusViewController
*/
class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    // now create the array of updates:
    var updates: [Update]?
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // first see if array updates has been created:
        if let updatesCount = updates?.count {
        return updatesCount
        }
        // if you are here, it means the count was nil
        // so return 0 as the nr of rows:
        return 0
    } // function
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
 
        // var cell is the row you're goint to print i think..
        
        
        // TODO: make this cell reuseable
        
    var cell = NSBundle.mainBundle().loadNibNamed("UpdateTableViewCell", owner: self, options: nil).first as! UpdateTableViewCell
        
        
        
        if let updates = updates {
            var update = updates[indexPath.row]
            cell.updateTextLabel?.text = update.text
        }

        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        
        // for the future:
        // TODO: Sample data, remove when getting real data
        
        
        // initialize the array updates:
        updates = [Update]()
        // create a user (like NYC in tweeter), its class is User
        var user = User()
        user.username = "James"
        user.name = "James Martinez"
        user.bio = "Him"
        user.city = "San Francisco"
        user.link = "http://somewebsite.com"
        
        
        
        // create one update:
        
        for var i = 0; i<100; i++ {
            var update = Update()
            update.date = NSDate()
            update.text = "Hello, World! \(i)"
            update.user = user   // .user is a property of update, and user by itself is a variable, ojo!
        
            // now append this instance of Update, i.e. update,  to the array updates:
        
            updates?.append(update)
        } // for loop
        
    } // end view did load
}

