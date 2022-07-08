
import UIKit

class TablesViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource {
   
 

    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
    let getDataFromeFireBase = GetDataFromeFireBase()
    var tablesForDelete :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tablesCollectionView.dataSource = self
        tablesCollectionView.delegate = self
    
         getDataFromeFireBase.getTables { [self] in
             tablesForDelete = getDataFromeFireBase.tables
             tablesCollectionView.reloadData()
        }
  
     }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
     return tablesForDelete.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tablesCell", for: indexPath) as! TablesCollectionViewCell
        
        if (indexPath.row % 2  == 0){
            
            let imgForDelete = UIImage(named: "btnRed")
            cell.setUpTalesContent(tableNumber: tablesForDelete[indexPath.row] , tableImage: imgForDelete!)
        }else{
            
            let imgForDelete = UIImage(named: "btnGreen")
            cell.setUpTalesContent(tableNumber: tablesForDelete[indexPath.row] , tableImage: imgForDelete!)
        }
      
   
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let segueToTakeOrderView = performSegue(withIdentifier: "toTakeOrderView", sender: indexPath.row)
        
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var takeOrderView = segue.destination as! TakeOrderViewController
        takeOrderView.tableNumber =  String (sender as! Int)
        
    }
    
    
    

}





















