
import Foundation
import UIKit


class MessageForUser  {
    
    
    let emptyTextFieldText = "Skriv restaurang id först"
    let wrongIdText = "Fel ID"
    let guestDosentOrdered = "Nuvarande gäst har inte beställt något"
    let tableHaseNoOrder = "Det finns ingen order att skicka"
   
    
    func sendMessage (controller : UIViewController ,  msg : String){
        let dialogMessage = UIAlertController(title: "Warning", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
        })
        dialogMessage.addAction(ok)
        controller.present(dialogMessage, animated: true, completion: nil)
    }
    
    
    
    
    
  
    
    
    
    
    
    
}
