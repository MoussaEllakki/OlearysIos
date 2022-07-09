
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource , UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var tableSum: UIBarButtonItem!
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var drinksBtn: UIButton!
    @IBOutlet weak var dessertsBtn: UIButton!
    @IBOutlet weak var kidsBtn: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
 
    
    @IBOutlet weak var guestNumberLabel: UILabel!
    @IBOutlet weak var guestorderCollectionView: UICollectionView!
    

    var extraOrderTextView = UITextView()
    var addExtraOrderButton = UIButton()
    
    let foodMenu = FoodMenus()
    let drinkMenu = DrinksMenus()
    let desertsMenu = DessertsMenus()
    let kidsMenus = KidsMenus()
    var whichMenu = ShowMenu.foodMenus
    
 
    var tableNumber = ""
    let table = Table()
    let guest = Guest()
    var guestOrders = [Type]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giveAllButtonRedColor()
        foodBtn.backgroundColor = .green
        table.number = tableNumber
        tableSum.title = "Total: 0.0"
      
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
            
            cell.menuTittlelabel.text = foodMenu.foodMenus[indexPath.row].menueTittle
            cell.menu = foodMenu.foodMenus[indexPath.row].Menutypes
            
        } else if (whichMenu == ShowMenu.drinksMenus){
            
            cell.menuTittlelabel.text = drinkMenu.drinksmenu[indexPath.row].menueTittle
            cell.menu = drinkMenu.drinksmenu[indexPath.row].Menutypes
            
        } else if (whichMenu == ShowMenu.dessertsMenus){
            
            cell.menuTittlelabel.text = desertsMenu.allDessertsMenus[indexPath.row].menueTittle
            cell.menu = desertsMenu.allDessertsMenus[indexPath.row].Menutypes
            
        }else{
            
            cell.menuTittlelabel.text = kidsMenus.kidsMenu[indexPath.row].menueTittle
            cell.menu = kidsMenus.kidsMenu[indexPath.row].Menutypes
            
        }
        
    
  
        cell.takeOrderViewController = self
  
        
        cell.menuCollectionView.reloadData()
        cell.menuTittlelabel.layer.masksToBounds = true
        cell.menuTittlelabel.layer.cornerRadius = 10
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return guestOrders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "guestOrderCell", for: indexPath) as! GuestOrdersCollectionViewCell
        
        cell.deleteOrderButton.tag = indexPath.row
        cell.deleteOrderButton.addTarget(self, action: #selector(deleteGuestOrder(sender:)), for: .touchUpInside)
        cell.guesrOrderLabel.layer.masksToBounds = true
        cell.guesrOrderLabel.layer.cornerRadius = 10
        cell.guesrOrderLabel.text = guestOrders[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.3 , height: self.view.frame.height * 0.1)
    }
    
  
    func showGuestOrder (viewController : TakeOrderViewController , order : Type){
   
        guestOrders.append(order)
   
        viewController.guestorderCollectionView.reloadData()
    }
    
    
    @objc
    func deleteGuestOrder (sender : UIButton){
    
        guestOrders.remove(at: sender.tag)
        guestorderCollectionView.reloadData()
        
    }
    
    
    @IBAction func extraOrderButton(_ sender: Any) {
    
        
     
        extraOrderTextView = UITextView(frame: CGRect(x: 0.0, y: 85.0, width: self.view.frame.width * 1, height: self.view.frame.height * 1))
        
        extraOrderTextView.backgroundColor = .white
         self.view.addSubview(extraOrderTextView)
        
            
            
            addExtraOrderButton = UIButton(frame: CGRect(x: 100.0 , y: 450, width: self.view.frame.width - 200, height: 50))
        addExtraOrderButton .backgroundColor = .red
        addExtraOrderButton .setTitle("ok", for: .normal)
        addExtraOrderButton .layer.cornerRadius = 10
        addExtraOrderButton .addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            self.view.addSubview(addExtraOrderButton)
     
           
          
            
        }
        
  
    
        
        @objc
        func buttonAction(){
          
            extraOrderTextView.keyboardDismissMode
            extraOrderTextView.text = ""
            extraOrderTextView.isHidden = true
            addExtraOrderButton .isHidden = true
            
        }
        
    
    
    
 
    
    
}


extension TakeOrderViewController{
    
    
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
    
    
    
    
    
}
