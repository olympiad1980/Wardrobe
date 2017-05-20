import UIKit

class ManekenVC: UIViewController {
    
    let headImage = WardrobeModel().createWardrobeWhithClothes()
    
    @IBAction func backToStartVCButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func outwearMovePanGesture(_ sender: UIPanGestureRecognizer) {
        moveClothes(gesture: sender)
    }
    
    @IBAction func underwearMovePanGesture(_ sender: UIPanGestureRecognizer) {
        moveClothes(gesture: sender)
    }
}

fileprivate extension ManekenVC {

    func moveClothes(gesture: UIPanGestureRecognizer) {
        let outwear = gesture.view
        let point = gesture.translation(in: view)
        if let outwear = outwear {
            //            let xFormCentre = (outwear.center.x) - view.center.x
            outwear.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        }
    }
}
