//
//  MyAccountsViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 08/05/2021.
//

import UIKit

var heighForRow: CGFloat = 60
var heighForHeader: CGFloat = 229

class MyAccountsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items = MyAccountProperties.itemList()
     
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heighForHeader
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heighForRow
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = Bundle.main.loadNibNamed("MyAccountHeaderTableView", owner: self, options: nil)?.first as! MyAccountHeaderTableView
        header.avatarImage.image = R.image.avatar()
        header.myAccountName.text = "My Name is ..."
        header.myAccountEmail.text = "email@gmail.com"
        return header
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("MyAccountTableViewCell", owner: self, options: nil)?.first as! MyAccountTableViewCell
        cell.itemName.text = items[indexPath.item].title
        cell.icon.image = items[indexPath.item].icon
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //khi nao can goi ham nay ?
        //tableView.register(MyAccountTableViewCell.self, forCellReuseIdentifier: "MyAccountTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}
