//
//  Post.swift
//  Selfigram
//
//  Created by Maggie Drinkwater on 2018-03-07.
//  Copyright © 2018 Maggie Drinkwater. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Post: PFObject, PFSubclassing {
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    var likes: PFRelation<PFObject>! {
        return relation(forKey: "likes")
    }

    
    static func parseClassName() -> String {
        // sets what the table name on Parse will be called
        return "Post"
    }
    
    convenience init(image:PFFile, user:PFUser, comment:String){
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
    }
    
}
//    convenience init(imageURL : URL?, Xuser: User, Xcomment: String) {
//        self.init(Ximage: nil, imageURL:imageURL, Xuser: Xuser, Xcomment: Xcomment)
//    }
//    required init(Ximage: UIImage?, imageURL : URL?, Xuser: User, Xcomment: String) {
//        image = Ximage
//        user = Xuser
//        comment = Xcomment
//        self.imageURL = imageURL
//
//    }
//}

