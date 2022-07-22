
import UIKit

class TablesWithOrdes: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate{

    
    @IBOutlet weak var attGoraCollectionView: UICollectionView!
    let getDataFromeFireBase = GetDataFromeFireBase()
    var tablesForDelete :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        attGoraCollectionView.dataSource = self
        attGoraCollectionView.delegate = self
    
         getDataFromeFireBase.getTables { [self] in
            
             attGoraCollectionView.reloadData()
        }
  
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
     return tablesForDelete.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "attGoraCell", for: indexPath) as! AttGoraCollectionViewCell
        
        if (indexPath.row % 2 == 0){
            let imgForDelete = UIImage(named: "imagegreen")
            cell.setUpTalesContent(tableNumber: tablesForDelete[indexPath.row] , tableImage: imgForDelete!)
            
        }else{
            let imgForDelete = UIImage(named: "imagered")
            cell.setUpTalesContent(tableNumber: tablesForDelete[indexPath.row] , tableImage: imgForDelete!)
        }
      
     
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let segueToTakeOrderView = performSegue(withIdentifier: "toKitchen", sender: "aaa")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.2 , height: self.view.frame.height * 0.1)
    }
    
    
 

}
