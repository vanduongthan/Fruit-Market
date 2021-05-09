//
//  DashboardViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 07/05/2021.
//

import UIKit

class DashboardViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarShadow()
        // Do any additional setup after loading the view.
    }
    
    private func setupTabBarShadow(){
        tabBar.layer.shadowColor = UIColor.lightGray.cgColor
              tabBar.layer.shadowOpacity = 1
              tabBar.layer.shadowOffset = CGSize.zero
              tabBar.layer.shadowRadius = 50
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
