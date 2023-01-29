//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_ModuleName___WireframeInterface: AnyObject {

}

final class ___VARIABLE_ModuleName___Wireframe: BaseWireframe<___VARIABLE_ModuleName___ViewController> {

    private let storyboard = UIStoryboard(name: "___VARIABLE_ModuleName___", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: ___VARIABLE_ModuleName___ViewController.self)
        super.init(viewController: moduleViewController)
        let interactor = ___VARIABLE_ModuleName___Interactor() 
        let presenter = ___VARIABLE_ModuleName___Presenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    } 
}

extension ___VARIABLE_ModuleName___Wireframe: ___VARIABLE_ModuleName___WireframeInterface {

}
