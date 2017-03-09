#if DEMO

import UIKit

protocol DemoItem {
    var controller: UIViewController { get }
}

struct Demo {

    static let items: [DemoItem] = [
    ]
    
}

#endif
