import UIKit
import FormationLayout

typealias LayoutBlock = (ConstraintMaker) -> Void

/// Helper class to build UI
class UI {

    /// Only for getting `view` and `topLayoutGuide/bottomLayoutGuide`
    unowned let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller

        view.backgroundColor = .white
        build()
    }

    lazy var view: UIView = self.controller.view
    lazy var layout: FormationLayout = FormationLayout(rootView: self.view)

    var topLayoutGuide: UILayoutSupport {
        return controller.topLayoutGuide
    }
    var bottomLayoutGuide: UILayoutSupport {
        return controller.bottomLayoutGuide
    }

    func build() {
    }

}

/// App level ui helper
protocol AppUI {
    /// App root controller
    var controller: UIViewController { get }
}
extension UI: AppUI { }
