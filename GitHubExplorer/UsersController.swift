import UIKit

final class UsersUI: UI {

    override func build() {

    }

}

final class UsersController: UIViewController {

    var ui: UsersUI!
    override func viewDidLoad() {
        ui = UsersUI(controller: self)
    }

}
