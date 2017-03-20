import UIKit
import Localize_Swift

final class Router {

    let tabs: [Tab] = [.users, .repositories]

    let tabBarController: UITabBarController
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        self.tabBarController.viewControllers = tabs.map { $0.naviController }
    }

}

extension Tab {
    static let users = Tab(name: "users", controller: UsersController())
    static let repositories = Tab(name: "repositories", controller: UsersController())
}

struct Tab {

    let name: String
    let title: String

    fileprivate var naviController: UINavigationController
    fileprivate init(name: String, controller: UIViewController) {
        self.name = name
        title = "tab.\(name).title".localized()

        controller.title = title

        naviController = UINavigationController(rootViewController: controller)
        naviController.tabBarItem.title = title
        naviController.tabBarItem.image = UIImage(named: "\(name)TabIcon")
        Style.setupNaviBar(naviController.navigationBar)
    }

}
