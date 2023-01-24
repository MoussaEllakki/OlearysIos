import UIKit

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    let buildTablesInFB = BuildTablesInFb()
    let infoTextView = UITextView ()
    let okButton = UIButton ()
    
    @IBOutlet weak var infoButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        giveTextfieldPlaceHolderSize()
        addTextViewAndOkButton()
    }
    
    @IBAction func infoButton(_ sender: Any) {
        showInfoTextView()
    }
    
    @IBAction func LogInButton(_ sender: Any) {
        ControlInputManager.controllInput(userNameTextField:usernameTextField, passWrordTextField: passWordTextField , viewController: self)
    }
    
    // Dismiss keyboard on touching screen.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func giveTextfieldPlaceHolderSize() {
        let deviceManager = DeviceManager()
        usernameTextField.font = UIFont.systemFont(ofSize: CGFloat(deviceManager.placeholderSize))
        passWordTextField.font = UIFont.systemFont(ofSize: CGFloat(deviceManager.placeholderSize))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        usernameTextField.text = Constance.emptyText
        passWordTextField.text = Constance.emptyText
    }
}
