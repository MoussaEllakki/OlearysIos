
import UIKit

class MenuTableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var typePricelabel: UILabel!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var menuTittlelabel: UILabel!
    var takeOrderViewController = TakeOrderViewController()
    
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
        
        cell.foodNamelabel.text = "\(menu[indexPath.row].name) \(menu[indexPath.row].price)"
        cell.foodNamelabel.layer.masksToBounds = true
        cell.foodNamelabel.layer.cornerRadius = 10
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
     
      takeOrderViewController.showGuestOrder( viewController : takeOrderViewController   , type: menu[indexPath.row])
        
    }
    
   
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: takeOrderViewController.view.frame.width * 0.33 , height: takeOrderViewController.view.frame.height * 0.080)
    }
  
    
    
    
    
    
    
    
}



