

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    @IBOutlet weak var restaurantIDTextField: UITextField!
    
    let buildRestaurant = BuildRestaurant()
    let messageForUser = MessageForUser()
    let access = Access()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //  buildRestaurant.buildTables(tableQuantity: 20)
     
        
    }
    
    
    @IBAction func logIn_button(_ sender: Any) {
        if (restaurantIDTextField.text!.isEmpty) {
            messageForUser.sendMessage(controller: self, msg: messageForUser.emptyTextFieldText)
        }
        
        controllAccess(input: restaurantIDTextField.text!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        restaurantIDTextField.text = ""
    }
    
}

extension LogInViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    
    func controllAccess(input : String){
        
        if (input == access.alexK || input == access.saraK || input == access.kithen){
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableWithOrder") as! TableWithOrderViewController
          
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if (input == access.davidW || input == access.dinaW || input == access.waiter){
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MinView") as! MainViewController
            self.navigationController?.pushViewController(vc, animated: true)
          
        }else{
            
            messageForUser.sendMessage(controller: self, msg: messageForUser.noAccess)
            
        }
    
    }






}












