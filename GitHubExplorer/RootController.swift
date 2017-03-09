import UIKit

/// Root view controller as entry point in `Main.storyboard`
class RootController: UITabBarController {

    override func viewDidLoad() {
        Style.setupTabBar(tabBar)

        ServiceLocator.register(UI(controller: self), forType: AppUI.self)

        let router = Router(tabBarController: self)
        ServiceLocator.register(router)

        #if DEMO
            if let item = Demo.items.first {
                _ = item
            }
        #endif

    }
    
}
