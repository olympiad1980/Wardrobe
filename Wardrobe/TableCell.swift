
import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var iconsImage: UIImageView!
    
    var initCell: Clothes? {
        didSet {
            setUpCell()
            propertyCell()
        }
    }
    
    func setUpCell() {
        if let saveCell = initCell {
            nameLabel.text = saveCell.name
            countLabel.text = "count\(saveCell.images.count.description)"
            iconsImage.image = UIImage.init(named: saveCell.icons)
        }
    }
    
    func propertyCell() {
        nameLabel.textColor = UIColor.init(netHex: 0xc83b96)
        iconsImage.layer.cornerRadius = 30
        iconsImage.clipsToBounds = true
        iconsImage.tintColor = UIColor.white
        iconsImage.backgroundColor = UIColor.init(netHex: 0x22282e)
    }
}
