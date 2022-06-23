

import UIKit
import Firebase

class LogInViewController: UIViewController {

    
    @IBOutlet weak var restaurantIDTextField: UITextField!
    var ref :  DatabaseReference!
    var restaurant = BuildRestaurant()
    var sendMsg = MessageForUser()
    
    var controll = ControllEmptyTextAndRestaurantID()
    
    override func viewDidLoad() {

     super.viewDidLoad()

        ref = Database.database().reference()
   
        ref.child("xxxxxxx").setValue("mmmmmmmmmmm")
        //testa
        
    }
    
    

    
    @IBAction func logIn_button(_ sender: Any) {
        
        if controll.ifTextEmpty(textField: restaurantIDTextField) {
            sendMsg.BecauseTextFieldIsEmpty(controller: self, msg: sendMsg.emptyTextField)
            print("empty")
            
        }else{
          
            restaurantIDTextField.text = ""
            print("no empty")
            
        }
    
    }
    
    
 
    
   
  
 
    

}



extension LogInViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
 
    
    
}



















