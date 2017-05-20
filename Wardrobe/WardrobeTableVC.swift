
import UIKit

class WardrobeTableVC: UIViewController {
    
    static let cellIdentifie = "cellWardrobe"
    static let segueIdentifier = "doToWardrobeCollectionVC"
    
    var wardrobe = WardrobeModel().createWardrobeWhithClothes()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(netHex: 0xf4fbfd)
        tableViewProperty(table: tableView)
        initHeaderView(head: headerView)
    }
    
    @IBAction func cancelBarButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}

extension WardrobeTableVC {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let clothesIndexForRow = wardrobe[indexPath.row]
        performSegue(withIdentifier: WardrobeTableVC.segueIdentifier, sender: clothesIndexForRow)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == WardrobeTableVC.segueIdentifier {
            if let indexPathForRow = tableView.indexPathForSelectedRow {
                if let nextVC = segue.destination as? WardrobeCollectionVC {
                    nextVC.clothes = wardrobe[indexPathForRow.row].images
                }
            }
        }
    }
    
    func initHeaderView(head: UIView) {
        let sizeHead: CGFloat = (view.frame.height + view.frame.width) / 15
        head.backgroundColor = UIColor.init(netHex: 0xd3effa)
        head.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: sizeHead)
    }
    
    func tableViewProperty(table: UITableView) {
        table.separatorStyle = .none
    }
}

extension WardrobeTableVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wardrobe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WardrobeTableVC.cellIdentifie, for: indexPath) as! TableCell
        let clothesPathForRow = wardrobe[indexPath.row]
        
        colorCell(cell: cell, index: indexPath)
        cell.initCell = clothesPathForRow
        
        
        return cell
    }
    
    private func colorCell(cell: TableCell, index: IndexPath) {
        cell.selectionStyle = .none
        
        if index.row == 0 {
            cell.backgroundColor = UIColor.init(netHex: 0xd3effa)
        }
        else if index.row == 1 {
            cell.backgroundColor = UIColor.init(netHex: 0xdef3fb)
        }
            
        else if index.row == 2 {
            cell.backgroundColor = UIColor.init(netHex: 0xe9f7fc)
        }
            
        else if index.row == 3 {
            cell.backgroundColor = UIColor.init(netHex: 0xf4fbfd)
        }
    }
}



