
import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var iconsImage: UIImageView!
    
    var initCell: Cupboard? {
        didSet {
            setUpCell()
            propertyCell()
        }
    }
}

fileprivate extension TableCell {

    func setUpCell() {
        if let saveCell = initCell {
            nameLabel.text = saveCell.name
            countLabel.text = "\(saveCell.images.count.description) count"
            iconsImage.image = UIImage.init(named: saveCell.icons)
        }
    }
    
    func propertyCell() {
        nameLabel.textColor = UIColor.black
        iconsImage.layer.cornerRadius = 30
        iconsImage.clipsToBounds = true
        iconsImage.tintColor = UIColor.white
        iconsImage.backgroundColor = UIColor.init(netHex: 0x22282e)
    }
    
}
