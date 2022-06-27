
import UIKit

class KitchenViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource{
  
    
    @IBOutlet weak var ordersCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ordersCollectionView.delegate = self
        ordersCollectionView.dataSource = self

    }
    

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "orderCell", for: indexPath) as! OrdersCollectionViewCell
        
        cell.guestNumber.text = "xxx"
        return cell
        
        
    }
  

}
