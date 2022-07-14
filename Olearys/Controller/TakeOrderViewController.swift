
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource , UICollectionViewDelegateFlowLayout , UITextFieldDelegate{
    

 
    @IBOutlet weak var tableSum: UIBarButtonItem!
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var drinksBtn: UIButton!
    @IBOutlet weak var dessertsBtn: UIButton!
    @IBOutlet weak var kidsBtn: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var guestNumberLabel: UILabel!
    @IBOutlet weak var guestorderCollectionView: UICollectionView!
    
    let cancelOrderButton = UIBarButtonItem()
    let foodMenu = FoodMenus()
    let drinkMenu = DrinksMenus()
    let desertsMenu = DessertsMenus()
    let kidsMenus = KidsMenus()
    var whichMenu = ShowMenu.foodMenus
    var messageForuser = MessageForUser()
    var addittionOrderTextField : UITextField?
    
 
    let table = Table()
    var guest = Guest(number: "1")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giveAllButtonRedColor()
        foodBtn.backgroundColor = .green
       
        tableSum.title = "Totalt: \(table.sum)"
        self.title = "Bord \(table.number)"
        table.guests.append(guest)
        guestNumberLabel.text = "Guest \(table.guests.count) sum: \(guest.sum)"
        cancelOrderButton.title = "Avbryt"
       
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = cancelOrderButton
        
   }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (whichMenu == ShowMenu.foodMenus){
            return foodMenu.foodMenus.count
            
        } else if (whichMenu == ShowMenu.drinksMenus){
            return drinkMenu.drinksmenu.count
            
        } else if (whichMenu == ShowMenu.dessertsMenus){
            return desertsMenu.allDessertsMenus.count
        }else{
            
            return kidsMenus.kidsMenu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        
        if (whichMenu == ShowMenu.foodMenus){
            
            cell.menuTittlelabel.text = foodMenu.foodMenus[indexPath.row].tittle
            cell.menu = foodMenu.foodMenus[indexPath.row].types
            
        } else if (whichMenu == ShowMenu.drinksMenus){
            
            cell.menuTittlelabel.text = drinkMenu.drinksmenu[indexPath.row].tittle
            cell.menu = drinkMenu.drinksmenu[indexPath.row].types
            
        } else if (whichMenu == ShowMenu.dessertsMenus){
            
            cell.menuTittlelabel.text = desertsMenu.allDessertsMenus[indexPath.row].tittle
            cell.menu = desertsMenu.allDessertsMenus[indexPath.row].types
            
        }else{
            
            cell.menuTittlelabel.text = kidsMenus.kidsMenu[indexPath.row].tittle
            cell.menu = kidsMenus.kidsMenu[indexPath.row].types
            
        }
        
        cell.takeOrderViewController = self
        cell.menuCollectionView.reloadData()
        cell.menuTittlelabel.layer.masksToBounds = true
        cell.menuTittlelabel.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return guest.types.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "guestOrderCell", for: indexPath) as! GuestOrdersCollectionViewCell
        
        cell.deleteOrderButton.tag = indexPath.row
        cell.deleteOrderButton.addTarget(self, action: #selector(deleteGuestOrder(sender:)), for: .touchUpInside)
        cell.guesrOrderLabel.layer.masksToBounds = true
        cell.guesrOrderLabel.layer.cornerRadius = 10
        cell.guesrOrderLabel.text = guest.types[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.3 , height: self.view.frame.height * 0.1)
    }
    
  
    func showGuestOrder (viewController : TakeOrderViewController , type : Type){
        guest.makeOrder(type: type)
        guestNumberLabel.text = "Guest \(table.guests.count) sum: \(guest.sum)"
        updateTableInformation()
        viewController.guestorderCollectionView.reloadData()
    }
    
    
    @objc
    func deleteGuestOrder (sender : UIButton){
        guest.regretOrder(index: sender.tag)
        updateGuestInformation()
        updateTableInformation()
    }
    
    
    
    
    @IBAction func buttonNextGuest(_ sender: Any) {
        
        if (guest.types.count == 0){
            messageForuser.sendMessage(controller: self, msg: messageForuser.guestDosentOrdered)
        }else{
            
            let nextGuestNumber = String (table.guests.count)
            let newGuest = Guest(number: nextGuestNumber)
            guest = newGuest
            table.guests.append(guest)
            updateGuestInformation()
            updateTableInformation()
        
      
        }
        
    }
    
    
    
    @IBAction func buttonSendOrder(_ sender: Any) {
        
        if (table.sum == 0.0){
            messageForuser.sendMessage(controller:self, msg: messageForuser.tableHaseNoOrder)
        }else{
            messageForuser.confirmeMessage(controller: self, msg: messageForuser.confirmSendingOrder)
            
        }
        
    }
    
    
    func updateGuestInformation(){
        guestNumberLabel.text = "Guest \(table.guests.count) sum: \(guest.sum)"
        guestorderCollectionView.reloadData()
    }
    
    
    
    func updateTableInformation(){
        table.getTableSum()
        tableSum.title = "Total: \(table.sum)"
        
    }
    
    
}






extension TakeOrderViewController {
    
    
 
    
    @IBAction func foodButton(_ sender: Any) {
        whichMenu = ShowMenu.foodMenus
        menuTableView.reloadData()
        giveAllButtonRedColor()
        foodBtn.backgroundColor = .green
        
    }
    
    @IBAction func drinksButton(_ sender: Any) {
        whichMenu = ShowMenu.drinksMenus
        menuTableView.reloadData()
        giveAllButtonRedColor()
        drinksBtn.backgroundColor = .green
        
    }
    
    @IBAction func dessertsButton(_ sender: Any) {
        whichMenu = ShowMenu.dessertsMenus
        menuTableView.reloadData()
        giveAllButtonRedColor()
        dessertsBtn.backgroundColor = .green
    }
    
    @IBAction func kidsbutton(_ sender: Any) {
        whichMenu = ShowMenu.kidsMenus
        menuTableView.reloadData()
        giveAllButtonRedColor()
        kidsBtn.backgroundColor = .green
        
    }
    
    func giveAllButtonRedColor (){
        foodBtn.backgroundColor = .red
        drinksBtn.backgroundColor = .red
        dessertsBtn.backgroundColor = .red
        kidsBtn.backgroundColor = .red
    }
    
    
    
    //____code for addition orders ----------------------------------------------------
    
@IBAction func extraOrderButton(_ sender: Any) {
       
        addittionOrderTextField = UITextField(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        addittionOrderTextField!.backgroundColor = .white
        addittionOrderTextField!.returnKeyType = .done
        addittionOrderTextField!.delegate = self
   
         self.view.addSubview(addittionOrderTextField!)
        
          
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tableSum.title  =    addittionOrderTextField!.text
        addittionOrderTextField!.isHidden = true
        view.endEditing(true)
        return true
    }
    // ----------------------------------------------------------------------------
    
}



