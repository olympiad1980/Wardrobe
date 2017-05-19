
import UIKit

class NavigationStoryVC: UINavigationController {
    
    @IBOutlet weak var navigationColor: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar(bar: navigationColor)
    }
}

extension NavigationStoryVC {
    
    func initNavigationBar(bar: UINavigationBar) {
//        bar.backgroundColor = UIColor.init(netHex: 0x0f75bc)
        bar.isTranslucent = false
        bar.alpha = 1
        bar.barTintColor = UIColor.init(netHex: 0x0f75bc)
        bar.tintColor = UIColor.white
        bar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    }
}
