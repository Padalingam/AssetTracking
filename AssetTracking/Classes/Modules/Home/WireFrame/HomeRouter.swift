//
//  HomeRouter.swift
//  AssetTracking
//
//  Created Padalingam A on 4/7/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class HomeRouter: HomeWireframeProtocol {
    static func createHomeModule() -> UIViewController {
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: StoryBoardIdentifier.HomeViewController.rawValue) as? HomeViewController
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interface: homeViewController!, interactor: interactor, router: HomeRouter())
        interactor.presenter = presenter
        homeViewController?.presenter = presenter
        return homeViewController!
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
