

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var restaurantIDTextField: UITextField!
    var buildRestaurant = BuildRestaurant()
    var messageForUser = MessageForUser()
    let restaurantId = "x"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
    }
    
      @IBAction func logIn_button(_ sender: Any) {
        if (restaurantIDTextField.text!.isEmpty) {
            messageForUser.sendMessage(controller: self, msg: messageForUser.emptyTextFieldText)
        }
        
          if (restaurantIDTextField.text != restaurantId){
            messageForUser.sendMessage(controller: self, msg: messageForUser.wrongIdText)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        restaurantIDTextField.text = ""
    }
    
}



extension LogInViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
}



















