
import Foundation
import UIKit


class Msg {
    
    
    
    static let emptyAccess = "Enter your username and password to log in"
    static let noAccess = "You don't have access"
    static let guestDosentOrdered = "This guest has not placed any orders"
    static let tableHaseNoOrder = "There is no order to send"
    static let tableIsTaken = "This table is busy"
    static let emptyusername = "Please enter your username"
    static let emptypassword = "Please enter your password"
    static let orderDosentDone = "Order is not complete"
    static let areYouSure = "Are you sure you want to send the order to the kitchen?"
    
    
    static func sendMsg (vc : UIViewController ,  msg : String){
        
        let dialogMessage = UIAlertController(title: "Warning", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
        })
        dialogMessage.addAction(ok)
        vc.present(dialogMessage, animated: true, completion: nil)
    }
    
    
    
    
    static func confirmOrder (vc : UIViewController  ,msg : String){
        
        let dialogMessage = UIAlertController(title: Constance.confirm , message: msg,  preferredStyle: .alert)
        
        let noButton = UIAlertAction(title: Constance.no, style: .destructive, handler: { [] (action) -> Void in
        })
        
        let jaButton = UIAlertAction(title: Constance.ja, style: .default, handler: { (action) -> Void in
            
            let takeOrderVC = Singleton.sharedInstance.takeOrderViewController
            let sendOrderToFb = SendOrderToFb()
            let guest = takeOrderVC?.tableViewModel.guest!
            
            if (guest!.sum == 0.0){
                
                // remove last guest in order last kids dosent order
                let guestNumber  = Int (guest!.number)
                let index = guestNumber! - Nr.one
                takeOrderVC!.tableViewModel.guests.remove(at: index)
                
            }
            
            
            sendOrderToFb.sendOrderToFireBase(table: takeOrderVC!.tableViewModel)
            
            for vc in takeOrderVC!.navigationController!.viewControllers {
                if let viewController = vc as? MainViewController
                {
                    vc.navigationController?.popToViewController(viewController, animated: true)
                }
            }
            
        })
        
        dialogMessage.addAction(noButton)
        dialogMessage.addAction(jaButton)
        vc.present(dialogMessage, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
}
