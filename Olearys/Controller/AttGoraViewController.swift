
import UIKit

class AttGoraViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate{

    
    @IBOutlet weak var attGoraCollectionView: UICollectionView!
    let getDataFromeFireBase = GetDataFromeFireBase()
    var tablesForDelete :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        attGoraCollectionView.dataSource = self
        attGoraCollectionView.delegate = self
    
         getDataFromeFireBase.getTables { [self] in
             tablesForDelete = getDataFromeFireBase.tables
             attGoraCollectionView.reloadData()
        }
  
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
     return tablesForDelete.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "attGoraCell", for: indexPath) as! AttGoraCollectionViewCell
        
       let imgForDelete = UIImage(named: "green")
        cell.setUpTalesContent(tableNumber: tablesForDelete[indexPath.row] , tableImage: imgForDelete!)
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let segueToTakeOrderView = performSegue(withIdentifier: "toKitchen", sender: "aaa")
        
    }
    

 

}
