
import UIKit

class TablesViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
   
 

    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
  
    let observeDataInfireBase = ObserveDataInfireBase()
    let messageForUser = MessageForUser()
    
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
        
    
        var color : UIColor =  .green
        var tableStatus = ""
        if (observeDataInfireBase.tables[indexPath.row].available == true){
            
            color = .green
            tableStatus = "  LEDIG"
            
        }else if (observeDataInfireBase.tables[indexPath.row].available == false && observeDataInfireBase.tables[indexPath.row].done == false){
           
            color = .red
            tableStatus = "  EJ Klar"
         }
        
        else if (observeDataInfireBase.tables[indexPath.row].available == false && observeDataInfireBase.tables[indexPath.row].done == true){
           
            color = .red
            tableStatus = "  KLAR"
        }
            let tableNumber = observeDataInfireBase.tables[indexPath.row].number + tableStatus
            cell.setUpTalesContent(tableNumber: tableNumber , color: color)
       
   
        return cell
     }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        if (observeDataInfireBase.tables[indexPath.row].available == true){
            
            let tableNumber = observeDataInfireBase.tables[indexPath.row].number
            let segueToTakeOrderView = performSegue(withIdentifier: "toTakeOrderView", sender: tableNumber)
        }else{
            
            messageForUser.sendMessage(controller: self, msg: messageForUser.takenTable)
            
        }
     
        
        
    }
    
  
    // bestämmer margin avstånd från olika håll
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30, left: 10, bottom: 30, right: 10)
    }
    
    // bestämmer avstånd mellan varje cell vertical
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 30.0
      }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var takeOrderView = segue.destination as! TakeOrderViewController
   
        takeOrderView.table.number =  String (sender as! String)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.27 , height: self.view.frame.height * 0.07)
    }
    
    

}





















