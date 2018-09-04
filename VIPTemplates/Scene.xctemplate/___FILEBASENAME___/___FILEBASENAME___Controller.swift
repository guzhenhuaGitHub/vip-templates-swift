//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName:identifier___DisplayLogic: class {

}

class ___VARIABLE_sceneName:identifier___Controller: UIViewController, ___VARIABLE_sceneName:identifier___DisplayLogic {
    
    // MARK: - Initialize 

    var interactor: ___VARIABLE_sceneName:identifier___BusinessLogic?
    var router: ___VARIABLE_sceneName:identifier___RoutingLogic?
    
    override init(nibName nibNameOrNil: String? = nil, bundle nibBundleOrNil: Bundle? = nil) {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup

    func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName:identifier___Interactor()
        let presenter = ___VARIABLE_sceneName:identifier___Presenter()
        let router = ___VARIABLE_sceneName:identifier___Router()
        viewController.interactor = interactor
        viewController.router = ___VARIABLE_sceneName:identifier___Router()
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
    
    // MARK: - Routing
    
    // MARK: - Live Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - <#Event#>
}
