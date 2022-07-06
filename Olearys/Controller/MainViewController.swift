

import UIKit

class MainViewController: UIViewController {

    
    var backButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         backButton.title = "Logga ut"
         self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    

    
   @IBAction func taOrder_button(_ sender: Any) {
    }
    

    
    @IBAction func koket_button(_ sender: Any) {
    }
    
    
    @IBAction func taBetalt_button(_ sender: Any) {
        
 
    }
    
    
    @IBAction func loggaUt_button(_ sender: Any) {
        navigationController?.popViewController(animated: true)
       
        
    }
    
    
    
    
    
}
