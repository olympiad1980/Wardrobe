
import UIKit

class fullDataImagesVC: UIViewController {
    
    var itemInexPath: IndexPath?
    var imageName: String?
    var prevVC: WardrobeCollectionVC!
    
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
            self.prevVC.dropItemForIndexPath(self.itemInexPath!)
            self.navigationController?.popViewController(animated: true)
            print("Alert is run!")
        }))
        present(alert, animated: true, completion: nil)
    }
}

extension fullDataImagesVC {

    func clothesImagesView() -> UIImageView {
        let clothes = UIImageView()
        let sizeWidth:CGFloat = (view.frame.size.width + view.frame.size.width) / 2
        let sizeHeight:CGFloat = view.frame.size.height / 2
        let centerX = (view.center.x - view.center.y / 2)
        let centerY = (view.center.y - self.view.frame.width / 1.5)
        clothes.frame = CGRect(x: centerX, y: centerY, width: sizeHeight, height: sizeWidth)
        clothes.contentMode = .scaleAspectFill
        clothes.clipsToBounds = true
        if let imageData = imageName {
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

extension fullDataImagesVC: UIScrollViewDelegate {
    
    func centerScrollViewContents() {
        bgScroll().maximumZoomScale = 4.0
        bgScroll().minimumZoomScale = 1.0
        bgScroll().zoomScale = 2.0
        
    }
}



