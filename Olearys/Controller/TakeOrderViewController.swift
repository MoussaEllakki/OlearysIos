
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
  
    

    @IBOutlet weak var menuColleCtionView: UICollectionView!
    
    var forDelete = [1,2,3,4,5,6,7,8,9,10,11,12]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuColleCtionView.delegate = self
        menuColleCtionView.dataSource = self
    
    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return forDelete.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "takeOrderCell", for: indexPath) as! TakeOrderCollectionViewCell
        
        cell.typeLabel.text = "Food mat\(forDelete[indexPath.row])"
        return cell
        
    }
    

}
