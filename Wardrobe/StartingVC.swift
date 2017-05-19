// ctrl + cmd + E замена имени переменных
import UIKit

class StartingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(wardrobeButtonAction())
        view.addSubview(manekenButtonAction())
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
    
    func goToWardrobeVC(sender: UIButton) {
        
        if sender.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 0.3, animations: {
                sender.transform = CGAffineTransform.init(scaleX: 0.7, y: 0.7)
            })
        }
            
        else {
            UIView.animate(withDuration: 0.3, animations: {
                sender.transform = CGAffineTransform.identity
            })
        }
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: "NavigationVC")
        self.present(nextVC, animated: true, completion: nil)
    }
    
    func goToManekenVC(sender: UIButton) {
        if sender.transform == CGAffineTransform.identity {
            UIView.animate(withDuration: 0.3, animations: {
                sender.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
            })
        }
            
        else {
            UIView.animate(withDuration: 0.3, animations: {
                sender.transform = CGAffineTransform.identity
            })
        }
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: "ManekenVC")
        self.present(nextVC, animated: true, completion: nil)
    }
}



