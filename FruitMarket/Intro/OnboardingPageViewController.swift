//
//  OnboardingPageViewController.swift
//  FruitMarket
//
//  Created by Van Duong on 05/05/2021.
//

import UIKit

class OnboardingPageViewController: UIPageViewController {
    
    private var currentPage: OnboardingStep = OnboardingStep.step1
    
    var didFinishAnimation:((_ currentIndex: OnboardingStep?) -> Void)?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configSubView()
    }
    
    private func configSubView() {
        dataSource = self
        self.delegate = self
        moveToPage(currentPage)
    }
    
    func getCurrentPageIndex() -> OnboardingStep {
        return currentPage
    }
    
    private func viewControllerAtIndex(_ index: OnboardingStep) -> OnboardingChildViewController {
        let childVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnboardingChildViewController") as? OnboardingChildViewController
            childVC!.pageIndex = index
        return childVC!
    }
    
    public func moveToPage(_ index: OnboardingStep){
        let vc = viewControllerAtIndex(index)
        setViewControllers([vc], direction: .forward, animated: true, completion: nil)
    }
    
    public func nextPage(){
        print(currentPage)
        if currentPage != OnboardingStep.step3 {
            currentPage = currentPage.next!
            let vc = viewControllerAtIndex(currentPage)
            setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        }
    }
}

extension OnboardingPageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let nextStep = currentPage.next else { return nil}
        return viewControllerAtIndex(nextStep)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let previousStep = currentPage.previous else { return nil}
        return viewControllerAtIndex(previousStep)
    }
}

extension OnboardingPageViewController: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if finished == true, completed == true {
            let currentVC = pageViewController.viewControllers?.first as?  OnboardingChildViewController
            currentPage = currentVC!.pageIndex
            print("onPageViewControllerListener")
            self.didFinishAnimation?(currentPage)
        }
    }
}
