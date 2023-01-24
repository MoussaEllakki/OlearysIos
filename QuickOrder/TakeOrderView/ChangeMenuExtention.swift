
import Foundation


extension TakeOrderViewController{
    
    func changeMenu (to selectedmenu : ChosenMenu){
        
        giveAllButtonGrayColor()
        
        switch selectedmenu {
        case .foodMenu:
            showMenu = foodMenu.foodMenus
            foodBtn.tintColor = .white
        case .dessertsMenu:
            showMenu = desertsMenu.allDessertsMenus
            desserBtn.tintColor  = .white
        case .drinksMenu:
            showMenu = drinkMenu.drinksmenus
            drinkBtn.tintColor  = .white
        case .kidsMenu:
            showMenu = kidsMenu.kidsMenus
            kidsBtn.tintColor = .white
        }
        menuTableView.reloadData()
    }
    
    func giveAllButtonGrayColor (){
        foodBtn.tintColor = .gray
        drinkBtn.tintColor = .gray
        desserBtn.tintColor = .gray
        kidsBtn.tintColor = .gray
    }
    
    
    
}
