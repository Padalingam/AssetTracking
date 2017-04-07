//
//  HomeProtocols.swift
//  AssetTracking
//
//  Created Padalingam A on 4/7/17.
//  Copyright © 2017 Padalingam A. All rights reserved.

import Foundation
import UIKit

//MARK: Wireframe -
protocol HomeWireframeProtocol: class {
    static func createHomeModule() -> UIViewController
}
//MARK: Presenter -
protocol HomePresenterProtocol: class {

}

//MARK: Interactor -
protocol HomeInteractorProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}

//MARK: View -
protocol HomeViewProtocol: class {

  var presenter: HomePresenterProtocol?  { get set }
}
