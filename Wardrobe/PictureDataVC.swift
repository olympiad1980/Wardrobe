
import UIKit

class PictureDataVC: UIViewController {
    
    var imageData: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(initScrollForBG())
    }

    @IBAction func deleteBarButtonAction(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Alert", message: "Delete?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
            self.initImageReflectingClothes().alpha = 0
        }))
        present(alert, animated: true, completion: nil)
    }
}

extension PictureDataVC {

    func initImageReflectingClothes() -> UIImageView {
        let clothes = UIImageView()
        let sizeWidth:CGFloat = (view.frame.size.width + view.frame.size.width) / 2
        let sizeHeight:CGFloat = view.frame.size.height / 2
        let centerX = (view.center.x - view.center.y / 2)
        let centerY = (view.center.y - self.view.frame.width / 1.5)
        clothes.frame = CGRect(x: centerX, y: centerY, width: sizeHeight, height: sizeWidth)
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





