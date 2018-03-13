//
//  User.swift
//  Selfigram
//
//  Created by Maggie Drinkwater on 2018-03-07.
//  Copyright © 2018 Maggie Drinkwater. All rights reserved.
//

import Foundation
import UIKit

class User {
    
    let username: String
    let profileImage: UIImage
    
    init(Xusername: String, XprofileImage: UIImage) {
        username = Xusername
        profileImage = XprofileImage
    }
}
