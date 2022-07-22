
import UIKit

class TablesViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
   
 

    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
  
    let observeDataInfireBase = ObserveDataInfireBase()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tablesCollectionView.dataSource = self
        tablesCollectionView.delegate = self
    
         observeDataInfireBase.getTables { [self] in
            
             tablesCollectionView.reloadData()
        }
  
     }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return observeDataInfireBase.tables.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tablesCell", for: indexPath) as! TablesCollectionViewCell
        
    
            let tableImage : UIImage
        if (observeDataInfireBase.tables[indexPath.row].available == true){
            
            tableImage  = UIImage(named: "imggreen")!
        }else{
            tableImage  = UIImage(named: "imgred")!
            
        }
            let tableNumber = observeDataInfireBase.tables[indexPath.row].number
            cell.setUpTalesContent(tableNumber: tableNumber , tableImage: tableImage)
       
   
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        let tableNumber = observeDataInfireBase.tables[indexPath.row].number
        let segueToTakeOrderView = performSegue(withIdentifier: "toTakeOrderView", sender: tableNumber)
        
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var takeOrderView = segue.destination as! TakeOrderViewController
   
        takeOrderView.table.number =  String (sender as! String)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.2 , height: self.view.frame.height * 0.1)
    }
    
    

}





















