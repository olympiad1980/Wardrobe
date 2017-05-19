
import UIKit

class PictureDataVC: UIViewController {
    
    var imageData: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(initScrollForBG())
    }
    
    func initImageReflectingClothes() -> UIImageView {
        let clothes = UIImageView()
        let sizeWidth:CGFloat = (view.frame.size.width + view.frame.size.width) / 3
        let sizeHeight:CGFloat = view.frame.size.height / 2
        let centerY = (view.center.y - view.center.x / 2)
        clothes.frame = CGRect(x: 0, y: centerY, width: sizeHeight, height: sizeWidth)
        clothes.contentMode = .scaleAspectFill
        clothes.clipsToBounds = true
        if let imageData = imageData {
            clothes.image = UIImage.init(named: imageData)
        }
        return clothes
    }
    
    func initScrollForBG() -> UIScrollView {
        let scroll = UIScrollView()
        scroll.frame = view.bounds
        scroll.contentSize.height = scroll.frame.size.height + 150
        scroll.addSubview(initImageReflectingClothes())
        return scroll
    }
}
