
import Foundation
import UIKit


class MessageForUser  {
    
    
    let emptyTextField = "Skriv restaurang id först"
    
    func BecauseTextFieldIsEmpty (controller : UIViewController ,  msg : String){
        let dialogMessage = UIAlertController(title: "Warning", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
        })
        dialogMessage.addAction(ok)
        controller.present(dialogMessage, animated: true, completion: nil)
      }
 
    
   
    
    
}
