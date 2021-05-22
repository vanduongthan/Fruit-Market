//
//  MyAccountHeaderTableViewCell.swift
//  FruitMarket
//
//  Created by Van Duong on 22/05/2021.
//

import UIKit

class MyAccountHeaderTableView: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var myAccountName: UILabel!
    @IBOutlet weak var myAccountEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    private func initView() {
        avatarImage.layer.cornerRadius = avatarImage.bounds.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
