
import UIKit

class PictureDataVC: UIViewController {
    
    var imageData: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(initViewBG())
        view.addSubview(initClothesImage())
    }
    
    func initViewBG() -> UIView {
        let back = UIView()
        back.frame = view.bounds
//        back.backgroundColor = UIColor.init(netHex: 0xc83b96)
        return back
    }
    
    func initClothesImage() -> UIImageView {
        let clothes = UIImageView()
        let sizeWidth:CGFloat = (view.bounds.width + view.bounds.width) / 1.5
        let centerY = (view.center.y - view.center.y / 1.5)
        clothes.frame = CGRect(x: 0, y: centerY, width: view.bounds.width, height: sizeWidth)
        clothes.contentMode = .scaleAspectFill
        clothes.clipsToBounds = true
        if let imageData = imageData {
            clothes.image = UIImage.init(named: imageData)
        }
        return clothes
    }
}
