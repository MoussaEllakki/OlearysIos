
import Foundation
import UIKit


class MessageForUser  {
    
    
    let emptyTextFieldText = "Skriv restaurang id först"
    let wrongIdText = "Fel ID"
    let guestDosentOrdered = "Nuvarande gäst har inte beställt något"
    let tableHaseNoOrder = "Det finns ingen order att skicka"
    let confirmSendingOrder = "Är du säker du vill skicka order ?"
    
    func sendMessage (controller : UIViewController ,  msg : String){
        let dialogMessage = UIAlertController(title: "Warning", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
        })
        dialogMessage.addAction(ok)
        controller.present(dialogMessage, animated: true, completion: nil)
    }
    
    
    func confirmeMessage (controller : UIViewController ,  msg : String){
        
     var dialogMessage = UIAlertController(title: "Bekräfta", message: msg, preferredStyle: .actionSheet)
      
    
       let jaKnapp = UIAlertAction(title: "Ja", style: .destructive, handler: { (action) -> Void in

    print("Ja button tapped")


     })

    let nejKnapp = UIAlertAction(title: "Nej", style: .default, handler: { (action) -> Void in

    print("Nej button tapped")
    })

        dialogMessage.addAction(nejKnapp)
        dialogMessage.addAction(jaKnapp)
        controller.present(dialogMessage, animated: true, completion: nil)

    }
    
    
    
    

    
    
}
