

import UIKit
import Firebase

class LogInViewController: UIViewController {

    
    @IBOutlet weak var restaurantIDTextField: UITextField!
    var ref :  DatabaseReference!
    var restaurant = BuildRestaurant()
    var messageForUser = MessageForUser()
    var olearysEntreId = "0000"
    var controll = ControllEmptyTextAndRestaurantID()
    
    override func viewDidLoad() {

     super.viewDidLoad()

        ref = Database.database().reference()
   
        ref.child("xxxxxxx").setValue("yesssss")
        //testa
        
    }
    
    

    
    @IBAction func logIn_button(_ sender: Any) {
        
        if controll.ifTextEmpty(textField: restaurantIDTextField) {
            messageForUser.sendMessage(controller: self, msg: messageForUser.emptyTextFieldText)
            print("empty")
            
        }else{
          
            if ("0000" == olearysEntreId){
                restaurantIDTextField.text = ""
       
              }else{
                
             messageForUser.sendMessage(controller: self, msg: messageForUser.wrongIdText)
            }
         
            
        }
    
    }
    
    
 
    
   
  
 
    

}



extension LogInViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
 
    
    
}



















