//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___DisplayLogic {

}

class ___FILEBASENAMEASIDENTIFIER___Controller: UIViewController, ___FILEBASENAMEASIDENTIFIER___DisplayLogic {
    
    // MARK: - Initialize 
    var interactor: ___FILEBASENAMEASIDENTIFIER___BusinessLogic?
    var router: ___FILEBASENAMEASIDENTIFIER___RoutingLogic?
    
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
        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
        viewController.interactor = interactor
        viewController.router = ___FILEBASENAMEASIDENTIFIER___Router()
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
    
    // MARK: - Routing
    
    // MARK: - Live Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - <#Event#>
}
