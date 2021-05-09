//
//  OnboardingViewController+Define.swift
//  FruitMarket
//
//  Created by Van Duong on 05/05/2021.
//

import UIKit

enum OnboardingStep: Int, CaseIterable {
    
    case step1
    case step2
    case step3
    
    var title: String? {
        switch self {
        case .step1:
            return R.string.onboardingChildViewController.firstScreenContent()
        case .step2:
            return R.string.onboardingChildViewController.secondScreenContent()
        case .step3:
            return R.string.onboardingChildViewController.thirdScreenContent()
        }
    }
    
    var subContent: String? {
        switch self {
        case .step1:
            return R.string.onboardingChildViewController.firstScreenDescription()
        case .step2:
            return R.string.onboardingChildViewController.secondScreenDescription()
        case .step3:
            return R.string.onboardingChildViewController.thirdScreenDescription()
        }
    }
    
    var image: UIImage?{
        switch self {
        case .step1:
            return R.image.onboardingStep1()
        case .step2:
            return R.image.step2()
        case .step3:
            return R.image.step3()
        }
    }
    var next: OnboardingStep? {
        switch self {
        case .step1:
            return .step2
        case .step2:
            return .step3
        case .step3:
            return nil
        }
    }
    
    var previous: OnboardingStep? {
        switch self {
        case .step1:
            return nil
        case .step2:
            return .step1
        case .step3:
            return .step2
        }
    }
}
