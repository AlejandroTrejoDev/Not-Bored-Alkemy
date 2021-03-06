//
//  HomeViewCoordinator.swift
//  Not Bored Alkemy
//
//  Created by Alejandro Alejandro Trejo Rodriguez on 06/06/22.
//

import UIKit


class HomeViewCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func toCategories(numOfPeople: Int?, minPriceValue: Float, maxPriceValue: Float){
        let vc = CategoryListViewController(numOfPeople: numOfPeople, minPrice: minPriceValue, maxPrice: maxPriceValue)
        vc.coordinator = CategoryListCoordinator(navigationController: navigationController)
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    
    func toTermsAndConditions(){
        let vc = TermsAndConditionsVC.instance()
        vc.modalPresentationStyle = .overFullScreen
        navigationController.present(vc, animated: true)
    }
}
