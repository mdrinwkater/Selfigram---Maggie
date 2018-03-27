//
//  SelfieCell.swift
//  Selfigram
//
//  Created by Maggie Drinkwater on 2018-03-14.
//  Copyright © 2018 Maggie Drinkwater. All rights reserved.
//

import UIKit

class SelfieCell: UITableViewCell {
    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
