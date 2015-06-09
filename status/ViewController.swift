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
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        //  of update itemsTODO: Return count
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // TODO: make this cell reuseable
        
        var cell = UITableViewCell()
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
    }
}

