//
//  MyAccountTableViewCell.swift
//  FruitMarket
//
//  Created by Van Duong on 22/05/2021.
//

import UIKit

class MyAccountTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var icon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
}
