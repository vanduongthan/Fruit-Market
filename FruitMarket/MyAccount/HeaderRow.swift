//
//  TableViewCell.swift
//  FruitMarket
//
//  Created by Van Duong on 08/05/2021.
//

import UIKit

class HeaderRow: UITableViewCell {


    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var edit: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImg.layer.cornerRadius = avatarImg.bounds.height / 2
        avatarImg.clipsToBounds = true
       
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
