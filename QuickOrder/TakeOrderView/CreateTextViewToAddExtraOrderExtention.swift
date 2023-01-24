
import Foundation
import UIKit

extension TakeOrderViewController {
    
    func addComponentToViewToGetExtraOrder(){
        
        extraOrderTextView.frame = CGRect(x: 15.0 , y : 70, width: view.frame.width - 30, height:  view.frame.height / 2 )
        extraOrderTextView.layer.cornerRadius = 10.0
        extraOrderTextView.backgroundColor = .systemGray4
        extraOrderTextView.font = UIFont.systemFont(ofSize: 18)
        
        extraOrderView.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height)
        extraOrderView.backgroundColor = Clr.appColor
        addButton.frame =  CGRect(x: 50.0, y: view.frame.height / 2 , width: 120, height: 40)
        addButton.layer.cornerRadius = 10
        addButton.setTitleColor(UIColor.black, for: .normal)
        addButton.setTitle("Add", for: .normal)
        addButton.backgroundColor = Clr.tableAvailable
        addButton.addTarget(self, action:#selector(self.addExtraOrder), for: .touchUpInside)
        
        cancelButton.frame = CGRect(x: view.frame.width - 150, y:  view.frame.height / 2, width: 120, height: 40)
        cancelButton.layer.cornerRadius = 10
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.backgroundColor = .red
        cancelButton.addTarget(self, action:#selector(self.cancel), for: .touchUpInside)
        
        extraOrderView.isHidden = true
        cancelButton.isHidden = true
        extraOrderTextView.isHidden = true
        addButton.isHidden = true
        
        view.addSubview(extraOrderView)
        view.addSubview(extraOrderTextView)
        view.addSubview(addButton)
        view.addSubview(cancelButton)
    }
    
    
    func showComponentToAddExtraOrder () {
        self.navigationItem.hidesBackButton = true
        self.navigationItem.rightBarButtonItem?.isHidden = true
        self.navigationItem.title =  Constance.emptyText
        extraOrderView.isHidden = false
        cancelButton.isHidden = false
        extraOrderTextView.isHidden = false
        addButton.isHidden = false
    }
    
    
    
    @objc func addExtraOrder() {
        let specialOrder = extraOrderTextView.text
        if (specialOrder != ""){
            Singleton.sharedInstance.takeOrderViewController?.tableViewModel.addSpecialOrder(specialOrder: specialOrder!)
            
        }
        hideComponent()
    }
    
    
    @objc func cancel() {
        hideComponent()
    }
    
    
    func hideComponent (){
        self.navigationItem.rightBarButtonItem?.isHidden = false
        self.navigationItem.hidesBackButton = false
        view.endEditing(true)
        self.navigationItem.title = "\(Constance.table)  \(tableNumber)"
        extraOrderView.isHidden = true
        cancelButton.isHidden = true
        extraOrderTextView.isHidden = true
        addButton.isHidden = true
    }
    
    
    
}





