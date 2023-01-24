
import Foundation
import UIKit

extension TakeOrderViewController {
    

    func runAllFunctionWhichShouldRunfirst (){
      
        tableViewModel.addFirstguest()
        tableViewModel.number = tableNumber
        showTableInfo()
        showGuestInfo()
        tableViewModel.delegate = self
        changeMenu(to: .foodMenu)
        addComponentToViewToGetExtraOrder()
        Singleton.sharedInstance.takeOrderViewController = self
        reloadGuestorderCollectionView()
    }
   
    
    
    func showGuestInfo(){
        guestInfolabel.text = String ("\(Constance.guest) \(tableViewModel.guests.count)    \(tableViewModel.guest!.sum)")
    }
    
    
    func reloadGuestorderCollectionView (){
        tableViewModel.guestOrderChanged = { [unowned self] takingOrderViewModel in
            guestOrderCollectionView.reloadData()
            showGuestInfo()
            showTableInfo()
        }
    }
    
    func showTableInfo(){
        
        self.navigationItem.title = "\(Constance.table) \(tableViewModel.number)"
        self.navigationItem.rightBarButtonItem?.title = "\(tableViewModel.sum)"
        
        let devicemanager = DeviceManager()
        let font = UIFont.systemFont(ofSize: CGFloat(devicemanager.tableInfoSize))
        let attributes = [NSAttributedString.Key.font: font ,NSAttributedString.Key.foregroundColor: UIColor.systemGray3 ]
        self.navigationItem.rightBarButtonItem?.setTitleTextAttributes(attributes, for: .normal)
        navigationController?.navigationBar.titleTextAttributes = attributes
     }
    
    

    
    func sendMsg(msg : String) {
        Msg.sendMsg(vc: self , msg: msg)
    }
    
    func confirmSendingOrder(msg: String) {
        Msg.confirmOrder( vc: self, msg: msg)
    }
    
}
