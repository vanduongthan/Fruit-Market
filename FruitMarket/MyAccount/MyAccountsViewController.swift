//
//  MyAccountsViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 08/05/2021.
//

import UIKit

class MyAccountsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    var items = MyAccountProperties.itemList()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.item == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "header", for: indexPath) as! HeaderRow
            cell.avatarImg.image = R.image.avatar();
            cell.name.text = "Master IOS"
            cell.email.text = "duongtv@heligate.com"
            return cell
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingItem", for: indexPath) as! SettingItem
            cell.itemName.text = items[indexPath.item].title
            cell.itemIcon.image = items[indexPath.item].icon
            return cell
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}
