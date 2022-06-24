
import UIKit

class TablesViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource {
   
 

    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
    var tablesForDelete : [TableForDelete] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        tablesCollectionView.dataSource = self
        tablesCollectionView.delegate = self
        
        for i in 0...10{
            
        
        tablesForDelete.append(TableForDelete(number: "1", img: UIImage(named: "red")!))
        tablesForDelete.append(TableForDelete(number: "2", img: UIImage(named: "red")!))
        tablesForDelete.append(TableForDelete(number: "3", img: UIImage(named: "red")!))
        }
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        tablesForDelete.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tablesCell", for: indexPath) as! TablesCollectionViewCell
        
        var thetable = tablesForDelete[indexPath.row]
        
        cell.setUpTalesContent(tableNumber: thetable.number , tableImage: thetable.img)
        
        return cell
        
        
        
    }
    
    
   

}



class TableForDelete {
    
    var number : String
    var img : UIImage
    
    init (number : String , img : UIImage){
        
        self.number = number
        self.img = img
        
    }
    
}
