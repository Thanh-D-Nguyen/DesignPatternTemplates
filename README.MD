# How to use:

Copy \*.xctemplate to "~/Library/Developer/Xcode/Templates/File Templates"

## Create a module:
### Step 1
![Step 1](https://github.com/Thanh-D-Nguyen/DesignPatternTemplates/blob/main/Images/Step%201.png)
### Step 2
![Step 2](https://github.com/Thanh-D-Nguyen/DesignPatternTemplates/blob/main/Images/Step%202.png)
### Step 3
![Step 3](https://github.com/Thanh-D-Nguyen/DesignPatternTemplates/blob/main/Images/Step%203.png)

## File Details:

### LoginInteractor
```
import Foundation

protocol LoginInteractorInterface: AnyObject {

}

class LoginInteractor {

}

extension LoginInteractor: LoginInteractorInterface {

}
```
### LoginPresenter
```
import Foundation

protocol LoginPresenterInterface: AnyObject {
   func viewDidLoad() 
}

class LoginPresenter {
    private let interactor: LoginInteractorInterface
    private let wireframe: LoginWireframeInterface

    init(interactor: LoginInteractorInterface, 
        wireframe: LoginWireframeInterface) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension LoginPresenter: LoginPresenterInterface {
    func viewDidLoad() {
        
    }
}
```
### LoginWireframe
```
import UIKit

protocol LoginWireframeInterface: AnyObject {

}

final class LoginWireframe: BaseWireframe<LoginViewController> {

    private let storyboard = UIStoryboard(name: "Login", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: LoginViewController.self)
        super.init(viewController: moduleViewController)
        let interactor = LoginInteractor() 
        let presenter = LoginPresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    } 
}

extension LoginWireframe: LoginWireframeInterface {

}
```
### LoginViewController
```
import UIKit

final class LoginViewController: BaseViewController {
    var presenter: LoginPresenterInterface!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        subscribe()
        presenter.viewDidLoad()
    }

    func setupUI() {

    }

    func subscribe() {

    }
}
```
