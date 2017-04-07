//
//  HomePresenter.swift
//  AssetTracking
//
//  Created Padalingam A on 4/7/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import UIKit

class HomePresenter: HomePresenterProtocol {

    weak private var view: HomeViewProtocol?
    private let interactor: HomeInteractorProtocol
    private let router: HomeWireframeProtocol

    init(interface: HomeViewProtocol, interactor: HomeInteractorProtocol, router: HomeWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router

        self.interactor.presenter = self
    }

}
