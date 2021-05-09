//
//  MyAccountsViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 08/05/2021.
//

import UIKit

class MyAccountsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "header", for: indexPath) as! TableViewCell
        cell.avatarImg.image = R.image.avatar();        cell.name.text = "Master IOS"
        cell.email.text = "duongtv@heligate.com"
    
        return cell
    }
    
    

    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}
