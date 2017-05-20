
import UIKit

class NavigationStoryVC: UINavigationController {
    
    @IBOutlet weak var navigationColor: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar(bar: navigationColor)
    }
}

extension NavigationStoryVC {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func initNavigationBar(bar: UINavigationBar) {

        bar.isTranslucent = false
        bar.alpha = 1
        bar.barTintColor = UIColor.init(netHex: 0x212325)

        bar.tintColor = UIColor.white
        bar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    }
}
