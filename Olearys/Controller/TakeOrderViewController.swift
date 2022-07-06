
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource{
    
    
    
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var drinksBtn: UIButton!
    @IBOutlet weak var dessertsBtn: UIButton!
    @IBOutlet weak var kidsBtn: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var tableNumberLabel: UILabel!
    @IBOutlet weak var tabletotalLabel: UILabel!
    @IBOutlet weak var guestNumberLabel: UILabel!
    @IBOutlet weak var guestorderCollectionView: UICollectionView!
    
    let foodMenu = FoodMenus()
    let drinkMenu = DrinksMenus()
    let desertsMenu = DessertsMenus()
    let kidsMenus = KidsMenus()
    
    var whichMenu = ShowMenu.foodMenus
    
    var fordelete = ["GIANT DOUBLE CHEESE BURGER" , "GIANT DOUBLE CHEESE BURGER" , "GIANT DOUBLE CHEESE BURGER" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButtonsColor(chosenMenu: whichMenu)
        
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
            cell.menuCollectionView.reloadData()
            
            
        } else if (whichMenu == ShowMenu.drinksMenus){
            
            
            cell.menuTittlelabel.text = drinkMenu.drinksmenu[indexPath.row].menueTittle
            cell.menu = drinkMenu.drinksmenu[indexPath.row].Menutypes
            cell.menuCollectionView.reloadData()
            
        } else if (whichMenu == ShowMenu.dessertsMenus){
            
            
            cell.menuTittlelabel.text = desertsMenu.allDessertsMenus[indexPath.row].menueTittle
            cell.menu = desertsMenu.allDessertsMenus[indexPath.row].Menutypes
            cell.menuCollectionView.reloadData()
        }else{
            
            
            cell.menuTittlelabel.text = kidsMenus.kidsMenu[indexPath.row].menueTittle
            cell.menu = kidsMenus.kidsMenu[indexPath.row].Menutypes
            cell.menuCollectionView.reloadData()
        }
        
        
        cell.menuTittlelabel.layer.masksToBounds = true
        cell.menuTittlelabel.layer.cornerRadius = 8
        
        
        return cell
        
        
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return fordelete.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "guestOrderCell", for: indexPath) as! GuestOrdersCollectionViewCell
        
        cell.guesrOrderLabel.layer.masksToBounds = true
        cell.guesrOrderLabel.layer.cornerRadius = 10
        cell.guesrOrderLabel.text = fordelete[indexPath.row]
        return cell
    }
    
    
    
    
}



extension TakeOrderViewController{
    
    
    @IBAction func foodButton(_ sender: Any) {
        
        whichMenu = ShowMenu.foodMenus
        menuTableView.reloadData()
        changeButtonsColor(chosenMenu: whichMenu)
        
    }
    
    @IBAction func drinksButton(_ sender: Any) {
        whichMenu = ShowMenu.drinksMenus
        menuTableView.reloadData()
        changeButtonsColor(chosenMenu: whichMenu)
        
    }
    
    @IBAction func dessertsButton(_ sender: Any) {
        
        whichMenu = ShowMenu.dessertsMenus
        menuTableView.reloadData()
        changeButtonsColor(chosenMenu: whichMenu)
    }
    
    
    @IBAction func kidsbutton(_ sender: Any) {
        whichMenu = ShowMenu.kidsMenus
        menuTableView.reloadData()
        changeButtonsColor(chosenMenu: whichMenu)
        
    }
    
    
    
    func changeButtonsColor (chosenMenu : ShowMenu){
        
        switch (chosenMenu){
        case .foodMenus:
            foodBtn.backgroundColor = .green
            drinksBtn.backgroundColor = .red
            dessertsBtn.backgroundColor = .red
            kidsBtn.backgroundColor = .red
        case .dessertsMenus:
            foodBtn.backgroundColor = .red
            drinksBtn.backgroundColor = .red
            dessertsBtn.backgroundColor = .green
            kidsBtn.backgroundColor = .red
        case .drinksMenus:
            foodBtn.backgroundColor = .red
            drinksBtn.backgroundColor = .green
            dessertsBtn.backgroundColor = .red
            kidsBtn.backgroundColor = .red
        case .kidsMenus:
            foodBtn.backgroundColor = .red
            drinksBtn.backgroundColor = .red
            dessertsBtn.backgroundColor = .red
            kidsBtn.backgroundColor = .green
        }
        
    }
    
    
}
