import UIKit

/// Root view controller as entry point in `Main.storyboard`
class RootController: UINavigationController {

    override func viewDidLoad() {

        ServiceLocator.register(UI(controller: self), forType: AppUI.self)

        let router = Router(naviController: self)
        ServiceLocator.register(router)

        #if DEMO
            if let item = Demo.items.first {
                viewControllers = [item.controller]
                return
            }
        #endif

    }
    
}
