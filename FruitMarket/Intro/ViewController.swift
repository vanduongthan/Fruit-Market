//
//  ViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 29/04/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    weak var pageViewController: OnboardingPageViewController? {
        didSet {
            pageViewController?.didFinishAnimation = {[weak self] (index) in
                self!.setUpButtons(index!)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func onNextButtonClicked(_ sender: UIButton) {
        if(pageViewController?.getCurrentPageIndex() == OnboardingStep.step3){
            goToDashboard()
            return
        }
        pageViewController?.nextPage()
        if pageViewController?.getCurrentPageIndex() == OnboardingStep.step3 {
            setUpButtons(OnboardingStep.step3)
        }
    }
    
    
    @IBAction func startDashboard(_ sender: Any) {
        goToDashboard()
    }
    
    private func goToDashboard(){

        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        let dashboardViewController = sb.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        
      //  let vc = R.storyboard.dashboard.dashboardViewController()
        //self.present(secondScreen, animated: true, completion: nil)
        self.navigationController?.pushViewController(dashboardViewController, animated: true)
        print("go to next")
    }
    
    private func setUpButtons(_ index: OnboardingStep){
        if index == OnboardingStep.step3 {
            nextButton.setTitle(R.string.onboardingChildViewController.getStarted(), for: .normal)
            skipButton.isHidden = true
        } else {
            nextButton.setTitle(R.string.onboardingChildViewController.next(), for: .normal)
            skipButton.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let info = R.segue.viewController.embedPageVIew(segue: segue) {
            pageViewController = info.destination
        }
    }
}




