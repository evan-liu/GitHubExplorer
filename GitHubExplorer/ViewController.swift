import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GitHub.api.getUser(login: "evan-liu") {
            switch $0 {
            case .success(let user): print(user)
            case .failure(let error): print(error)
            }
        }
    }

}
