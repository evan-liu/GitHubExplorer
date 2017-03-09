import UIKit

final class RepositoriesUI: UI {

    override func build() {
    }

}

final class RepositoriesController: UIViewController {

    var ui: RepositoriesUI!
    override func viewDidLoad() {
        ui = RepositoriesUI(controller: self)
    }

}
