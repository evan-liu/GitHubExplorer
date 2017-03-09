import UIKit

final class Router {

    let tabs: [Tab] = [.users, .repositories]

    let tabBarController: UITabBarController
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        self.tabBarController.viewControllers = tabs.map { $0.naviController }
    }

}

extension Tab {
    static let users = Tab(title: "Users", icon: .usersTabIcon, controller: UsersController())
    static let repositories = Tab(title: "Repositories", icon: .reposTabIcon, controller: UsersController())
}

struct Tab {

    fileprivate var naviController: UINavigationController
    fileprivate var rootController: UIViewController
    fileprivate init(title: String, icon: UIImage, controller: UIViewController) {
        rootController = controller
        naviController = UINavigationController(rootViewController: rootController)
        Style.setupNaviBar(naviController.navigationBar)
        naviController.tabBarItem.title = title
        naviController.tabBarItem.image = icon
    }

}
