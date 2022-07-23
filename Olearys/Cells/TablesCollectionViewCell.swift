
import UIKit

class TablesCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var tableNumber: UILabel!

 
    
    func setUpTalesContent(tableNumber : String , color :UIColor){
        
        self.tableNumber.text = tableNumber 
        self.tableNumber.backgroundColor = color
        self.tableNumber.layer.masksToBounds = true
        self.tableNumber.layer.cornerRadius = 15
  
        
    }
    
    
}
