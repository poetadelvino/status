//
//  Update.swift
//  status
//
//  Created by ernesto on 6/8/15.
//  Copyright (c) 2015 Pyramidia. All rights reserved.
//

/*
keeps the updates of the user (?)

each user has many updates.  It has an array of updates (in tweeter, every time NYC sent a message it's as it updated.

but each update has only one user.

    update.user

so to actualize data, call the method 

update.user

*/

import Foundation


class Update {
    
    var user: User?
    var text: String?
    var date: NSDate?
}
