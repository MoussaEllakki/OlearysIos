
import UIKit

class TablesViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
   
 

    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
    let getDataFromeFireBase = GetDataFromeFireBase()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tablesCollectionView.dataSource = self
        tablesCollectionView.delegate = self
    
         getDataFromeFireBase.getTables { [self] in
            
             tablesCollectionView.reloadData()
        }
  
     }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return getDataFromeFireBase.tables.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tablesCell", for: indexPath) as! TablesCollectionViewCell
        
    
            let tableImage : UIImage
        if (getDataFromeFireBase.tables[indexPath.row].available == true){
            
            tableImage  = UIImage(named: "imagegreen")!
        }else{
            tableImage  = UIImage(named: "imagered")!
            
        }
            let tableNumber = getDataFromeFireBase.tables[indexPath.row].number
            cell.setUpTalesContent(tableNumber: tableNumber , tableImage: tableImage)
       
   
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let segueToTakeOrderView = performSegue(withIdentifier: "toTakeOrderView", sender: indexPath.row)
        
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var takeOrderView = segue.destination as! TakeOrderViewController
   
        takeOrderView.table.number =  String (sender as! Int + 1)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.2 , height: self.view.frame.height * 0.1)
    }
    
    

}





















