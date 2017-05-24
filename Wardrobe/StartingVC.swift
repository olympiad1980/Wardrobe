// ctrl + cmd + E замена имени переменных
import UIKit

class StartingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(bgScroll())
    }
}

extension StartingVC {
    
    func bgScroll() -> UIScrollView {
        let scroll = UIScrollView()
        scroll.frame = view.bounds
        scroll.contentSize.height = scroll.frame.size.height + 90
        scroll.addSubview(manekenButtonAction())
        scroll.addSubview(wardrobeButtonAction())
        
        return scroll
        
    }
    
    func manekenButtonAction() -> UIButton {
        let button = UIButton()
        let buttonSize: CGFloat = 100
        let buttonImage: UIImage = UIImage.init(named: "user01")!
        button.frame = CGRect.init(x: view.center.x - buttonSize / 2, y: view.frame.minY + buttonSize + buttonSize, width: buttonSize, height: buttonSize)
        button.addTarget(self, action: #selector(goToManekenVC), for: .touchUpInside)
        button.layer.cornerRadius = buttonSize / 2
        button.clipsToBounds = true
        button.setImage(buttonImage, for: .normal)
        button.tintColor = UIColor.white
        button.contentMode = .scaleAspectFill
        button.backgroundColor = UIColor.init(netHex: 0x0f75bc)
        return button
    }
    
    func wardrobeButtonAction() -> UIButton {
        let button = UIButton()
        let buttonSize: CGFloat = 100
        let sizeManekenForY: CGFloat = buttonSize + manekenButtonAction().frame.origin.y
        let buttonImage: UIImage = UIImage.init(named: "hanger02")!
        button.frame = CGRect(x: view.center.x - buttonSize / 2, y: sizeManekenForY + buttonSize / 2, width: buttonSize, height: buttonSize)
        button.addTarget(self, action: #selector(goToWardrobeVC), for: .touchUpInside)
        button.layer.cornerRadius = buttonSize / 2
        button.clipsToBounds = true
        button.setImage(buttonImage, for: .normal)
        button.tintColor = UIColor.white
        button.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.init(netHex: 0xc83b96)
        return button
    }
    
    func goToManekenVC(sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: "TabBarVC")
        self.present(nextVC, animated: true, completion: nil)
    }
    
    func goToWardrobeVC(sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: "NavigationVC")
        self.present(nextVC, animated: true, completion: nil)
    }
}

