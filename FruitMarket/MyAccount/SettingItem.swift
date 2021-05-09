//
//  SettingItem.swift
//  FruitMarket
//
//  Created by Van Duong on 09/05/2021.
//

import UIKit

class SettingItem: UITableViewCell {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
