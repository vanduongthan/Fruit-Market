//
//  OnboardingChildViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 05/05/2021.
//

import UIKit

class OnboardingChildViewController: UIViewController {

    
    @IBOutlet private weak var titleContentLabel: UILabel!
    @IBOutlet private weak var subtitleContentLabel: UILabel!
    @IBOutlet private weak var contentImageView: UIImageView!
    
    var pageIndex: OnboardingStep = OnboardingStep.step1 {
        didSet{
            updateUI(pageIndex: pageIndex)
        }
    }
   // var pageIndex: Int? = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(pageIndex: pageIndex)
    }
    
    private func updateUI(pageIndex: OnboardingStep){
        self.titleContentLabel?.text = pageIndex.title
        self.subtitleContentLabel?.text = pageIndex.subContent
        self.contentImageView?.image = pageIndex.image
    }
}
