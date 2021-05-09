//
//  MyAccountsViewControllers+Items.swift
//  FruitMarket
//
//  Created by Van Duong on 08/05/2021.
//

import UIKit

enum MyAccountProperties: Int, CaseIterable {
    
    case myOrders
    case favourites
    case settings
    case myCart
    case rateUs
    case share
    case help
    case logOut
    
    static func itemList() -> [MyAccountProperties] {
        return [myOrders,
                favourites,
                settings,
                myCart,
                rateUs,
                share,
                help,
                logOut]
      }
    
    var icon: UIImage? {
        switch self {
        case .myOrders:
            return R.image.myOrders()
        case .favourites:
            return R.image.favourite()
        case .settings:
            return R.image.setting()
        case .myCart:
            return R.image.cart()
        case .rateUs:
            return R.image.rate()
        case .share:
            return R.image.share()
        case .help:
            return R.image.help()
        case .logOut:
            return R.image.logOut()
        }
    }
    
    var title: String? {
        switch self {
        case .myOrders:
            return R.string.myAccountsViewControllers.myOrders()
        case .favourites:
            return R.string.myAccountsViewControllers.farourites()
        case .settings:
            return R.string.myAccountsViewControllers.settings()
        case .myCart:
            return R.string.myAccountsViewControllers.myCart()
        case .rateUs:
            return R.string.myAccountsViewControllers.rateUs()
        case .share:
            return R.string.myAccountsViewControllers.share()
        case .help:
            return R.string.myAccountsViewControllers.help()
        case .logOut:
            return R.string.myAccountsViewControllers.logOut()
        }
    }
}
