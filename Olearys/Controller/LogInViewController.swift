

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    @IBOutlet weak var accessTextField: UITextField!
    
    let buildRestaurant = BuildRestaurant()
    let messageForUser = MessageForUser()
    let access = Access()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     // buildRestaurant.buildTables(tableQuantity: 30)
   
        
    }
    
    
    @IBAction func logIn_button(_ sender: Any) {
        if (accessTextField.text!.isEmpty) {
            messageForUser.sendMessage(controller: self, msg: messageForUser.emptyTextFieldText)
        }
        
        controllAccess(input: accessTextField.text!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        accessTextField.text = ""
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












