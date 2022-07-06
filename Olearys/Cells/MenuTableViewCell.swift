
import UIKit

class MenuTableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource{
   

    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var menuTittlelabel: UILabel!
    
    var menu = [Type]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        menuCollectionView.delegate = self
        menuCollectionView.dataSource = self
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

   
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return menu.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodTypeCell", for: indexPath) as! FoodCollectionViewCell
        
        cell.foodNamelabel.text = menu[indexPath.row].name
        
        return cell
        
        
    }
    
    
    
    

}
