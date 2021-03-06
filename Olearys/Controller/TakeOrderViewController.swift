
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource , UICollectionViewDelegateFlowLayout , UITextViewDelegate{
    

 
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
 
    var guestWishTextView : UITextView!
    var addGuestWishButton : UIButton!
    var setDataInFireBase = SetDataInFireBase()
 
    let table = Table()
    var guest = Guest(number: "1")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giveAllButtonRedColor()
        foodBtn.backgroundColor = .green
       
        tableSum.title = "Totalt: \(table.sum)"
        self.title = "Bord \(table.number)"
        table.guests.append(guest)
        guestNumberLabel.text = "Gäst \(table.guests.count) sum: \(guest.sum)"
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
        guestNumberLabel.text = "Guest \(guest.number) sum: \(guest.sum)"
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
            
            print(table.guests.count)
            let nextGuestNumber = String (table.guests.count + 1)
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
           confirmeSendingOrder()
            
        }
        
    }
    
    
    func updateGuestInformation(){
        guestNumberLabel.text = "Guest \(guest.number) sum: \(guest.sum)"
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
    
    
    
    //____code for add guest wishes ----------------------------------------------------
    
@IBAction func extraOrderButton(_ sender: Any) {
       
    
    guestWishTextView = UITextView(frame: CGRect(x: 0, y: 90, width: self.view.frame.width, height: self.view.frame.height))
      guestWishTextView.font = UIFont.systemFont(ofSize: 20)
       self.view.addSubview(guestWishTextView)
    
    addGuestWishButton = UIButton(frame: CGRect(x: 0 , y: 0, width: self.view.frame.width / 3, height: self.view.frame.height / 15))
      addGuestWishButton.layer.cornerRadius = 20
      addGuestWishButton.center = view.center
      addGuestWishButton.backgroundColor = .gray
      addGuestWishButton.setTitle("Add", for: .normal)
      addGuestWishButton.addTarget(self, action: #selector(addGuestWish), for: .touchUpInside)
      self.view.addSubview(addGuestWishButton)
     self.navigationItem.hidesBackButton = true
    guestWishTextView.text = guest.guestWishes

    
    
    
          
    }
    
   
    // ----------------------------------------------------------------------------
    
    
    @objc func addGuestWish(){
      
        guest.guestWishes = guestWishTextView.text
        guestWishTextView.isHidden = true
        addGuestWishButton.isHidden = true
        self.navigationItem.hidesBackButton = false
        
        
        
    }
    
    
    func confirmeSendingOrder (){
        
        var dialogMessage = UIAlertController(title: "Bekräfta", message: "Är du säker du vill skicka order till Köket ?", preferredStyle: .actionSheet)
        let jaKnapp = UIAlertAction(title: "Ja", style: .destructive, handler: { [self] (action) -> Void in
            
            if (guest.sum == 0.0){
                let guestNumber = table.guests.count - 1
                table.guests.remove(at: guestNumber)
            }
            setDataInFireBase.sendOrderToFireBase(table: table)
            for vc in self.navigationController!.viewControllers {
                if let myViewCont = vc as? MainViewController
                {
                    self.navigationController?.popToViewController(myViewCont, animated: true)
                }
            }
           
           
            
        })
        
        let nejKnapp = UIAlertAction(title: "Nej", style: .default, handler: { (action) -> Void in
            
            
        })
        
        dialogMessage.addAction(nejKnapp)
        dialogMessage.addAction(jaKnapp)
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    
    
    
    
    
}



