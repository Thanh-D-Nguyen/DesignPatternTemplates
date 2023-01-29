//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_ModuleName___PresenterInterface: AnyObject {
   func viewDidLoad() 
}

class ___VARIABLE_ModuleName___Presenter {
    private let interactor: ___VARIABLE_ModuleName___InteractorInterface
    private let wireframe: ___VARIABLE_ModuleName___WireframeInterface

    init(interactor: ___VARIABLE_ModuleName___InteractorInterface, 
        wireframe: ___VARIABLE_ModuleName___WireframeInterface) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterInterface {
    func viewDidLoad() {
        
    }
}
