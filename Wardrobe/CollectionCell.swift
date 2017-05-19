
import UIKit

class CollectionCell: UICollectionViewCell {
    
    var initImage: String? {
        didSet {
            setUpCell()
        }
    }
    
    @IBOutlet weak var clothesImage: UIImageView!
}

fileprivate extension CollectionCell {
    
    func setUpCell() {
        if let image = initImage {
            clothesImage.image = UIImage.init(named: image)
        }
    }
}
