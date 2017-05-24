
import UIKit

class PictureDataVC: UIViewController {
    
    var imageData: String?
    var delegate: DeleteImageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerScrollViewContents()
        view.backgroundColor = UIColor.init(netHex: 0xdbe0e3)
        view.addSubview(bgScroll())
        bgScroll().delegate = self
    }
    
    @IBAction func deleteBarButtonAction(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Alert", message: "Delete?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
            self.navigationController?.popViewController(animated: true)
            print("Alert is run!")
        }))
        present(alert, animated: true, completion: nil)
    }
}

extension PictureDataVC: DeleteImageDelegate {
    func deleteImage() {
    }
}

fileprivate extension PictureDataVC {

    func clothesImagesView() -> UIImageView {
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
    
    func bgScroll() -> UIScrollView {
        let scroll = UIScrollView()
        scroll.frame = view.bounds
        scroll.contentSize.height = scroll.frame.size.height + 150
        scroll.addSubview(clothesImagesView())
        return scroll
    }
}

extension PictureDataVC: UIScrollViewDelegate {
    
    func centerScrollViewContents() {
        let boundsSize = bgScroll().bounds.size
        var contentsFrame = clothesImagesView().frame
        
        if contentsFrame.size.width < boundsSize.width {
            contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0
        } else {
            contentsFrame.origin.x = 0.0
        }
        
        if contentsFrame.size.height < boundsSize.height {
            contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0
        } else {
            contentsFrame.origin.y = 0.0
        }
        
        clothesImagesView().frame = contentsFrame
    }
}



