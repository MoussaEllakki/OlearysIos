

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    @IBOutlet weak var restaurantIDTextField: UITextField!
    
    let buildRestaurant = BuildRestaurant()
    let messageForUser = MessageForUser()
    let restaurantId = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      buildRestaurant.buildTables(tableQuantity: 23)
     
        
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



















