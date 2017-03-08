import UIKit

final class Router {

    let naviController: UINavigationController
    init(naviController: UINavigationController) {
        self.naviController = naviController
    }
}

// MARK: Push & Pop
extension Router {

    func push(_ viewController: UIViewController, animated: Bool = true) {
        naviController.pushViewController(viewController, animated: animated)
    }

    @discardableResult
    func pop(animated: Bool = true) -> UIViewController? {
        return naviController.popViewController(animated: animated)
    }

}
