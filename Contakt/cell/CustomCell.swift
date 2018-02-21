//
//  CustomCell.swift
//  Contakt
//
//  Created by Orazkeldi Zhamalbekov on 06.02.18.
//  Copyright © 2018 Orazkeldi Zhamalbekov. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var human_name: UILabel!
    @IBOutlet weak var human_imageView: UIImageView!
    @IBOutlet weak var human_number: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
