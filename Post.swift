//
//  Post.swift
//  Selfigram
//
//  Created by Maggie Drinkwater on 2018-03-07.
//  Copyright © 2018 Maggie Drinkwater. All rights reserved.
//

import Foundation
import UIKit

class Post {
    let image: UIImage
    let user: User
    let comment: String
    
    init(Ximage: UIImage, Xuser: User, Xcomment: String) {
        image = Ximage
        user = Xuser
        comment = Xcomment
        
    }
}
