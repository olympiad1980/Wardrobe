
import UIKit

class WardrobeCollectionVC: UIViewController {
    
    static let cellIdentifie = "cellWardrobe"
    static let segueIdentifier = "doToPictureDataVC"
    
    var clothes: [String]?
    var delegate: DeleteImageDelegate?
    
    let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 50.0, right: 20.0)
    let itemsPerRows: CGFloat = 2
}

extension WardrobeCollectionVC {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let clothesIndexForRow = clothes?[indexPath.row] {
            performSegue(withIdentifier: WardrobeCollectionVC.segueIdentifier, sender: clothesIndexForRow)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == WardrobeCollectionVC.segueIdentifier {
            if let nextVC = segue.destination as? PictureDataVC {
                nextVC.imageData = sender as? String
                nextVC.delegate = self.delegate
            }
        }
    }
}

extension WardrobeCollectionVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let clothes = clothes else {
            return 0
        }
        return clothes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WardrobeCollectionVC.cellIdentifie, for: indexPath) as! CollectionCell
        if let clothes = clothes {
            let clothesPathForItem = clothes[indexPath.row]
            cell.initImage = clothesPathForItem
        }
        return cell
    }
}

extension WardrobeCollectionVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRows + 1)
        let avaiLableWhith = collectionView.frame.width - paddingSpace
        let whithPerItem = avaiLableWhith / itemsPerRows
        
        let sizeItem = CGSize(width: whithPerItem, height: whithPerItem)
        return sizeItem
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
