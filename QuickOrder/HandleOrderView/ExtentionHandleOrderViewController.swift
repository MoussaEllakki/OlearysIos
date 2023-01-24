
import Foundation
import UIKit

extension HandleOrderViewController {
    
    func addComponentToViewToHandleSpecialOrder(){
        
        
        extraOrderTextView.frame = CGRect(x: 15.0 , y : 70, width: view.frame.width - 30, height:  view.frame.height / 2 )
        extraOrderTextView.layer.cornerRadius = 10.0
        extraOrderTextView.backgroundColor = .systemGray4
        extraOrderTextView.font = UIFont.systemFont(ofSize: 20)
        extraOrderView.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height)
        extraOrderView.backgroundColor = Clr.appColor
        
        ConfirmOrderIsDoneButton.frame =  CGRect(x: 50.0, y: view.frame.height / 2 , width: 100, height: 40)
        ConfirmOrderIsDoneButton.setTitleColor(UIColor.black, for: .normal)
        ConfirmOrderIsDoneButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        ConfirmOrderIsDoneButton.setTitle("Done", for: .normal)
        ConfirmOrderIsDoneButton.backgroundColor = Clr.tableAvailable
        ConfirmOrderIsDoneButton.addTarget(self, action:#selector(self.ConfirmOrderIsDone), for: .touchUpInside)
        
        cancelButton.frame = CGRect(x: view.frame.width - 150, y:  view.frame.height / 2, width: 100, height: 40)
        cancelButton.layer.cornerRadius = 10
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.backgroundColor = .red
        cancelButton.addTarget(self, action:#selector(self.ConfirmOrderIsNotDone), for: .touchUpInside)
        
        extraOrderView.isHidden = true
        cancelButton.isHidden = true
        extraOrderTextView.isHidden = true
        ConfirmOrderIsDoneButton.isHidden = true
        extraOrderTextView.isEditable = false
        
        view.addSubview(extraOrderView)
        view.addSubview(extraOrderTextView)
        view.addSubview(ConfirmOrderIsDoneButton)
        view.addSubview(cancelButton)
    }
    
    
    
    
    @objc func ConfirmOrderIsDone() {
        currentGuest?.guestspecialOrderDone = true
        menuCollectionView.reloadData()
        hideComponent()
        
    }
    
    @objc func ConfirmOrderIsNotDone() {
        currentGuest?.guestspecialOrderDone = false
        menuCollectionView.reloadData()
        hideComponent()
    }
    
    func showComponentToHandleSpecialOrder () {
        self.navigationItem.hidesBackButton = true
        extraOrderView.isHidden = false
        cancelButton.isHidden = false
        extraOrderTextView.isHidden = false
        ConfirmOrderIsDoneButton.isHidden = false
        extraOrderTextView.text = currentGuest?.specialOrder
    }
    
    
    func hideComponent (){
        self.navigationItem.hidesBackButton = false
        extraOrderView.isHidden = true
        cancelButton.isHidden = true
        extraOrderTextView.isHidden = true
        ConfirmOrderIsDoneButton.isHidden = true
        
    }
    
    
    
    
}

