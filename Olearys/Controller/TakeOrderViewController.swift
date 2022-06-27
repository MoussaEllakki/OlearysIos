
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
  
    

    @IBOutlet weak var menuColleCtionView: UICollectionView!
    
    let getDataFromeFireBase = GetDataFromeFireBase()
    var tablesForDelete :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuColleCtionView.delegate = self
        menuColleCtionView.dataSource = self
        
            getDataFromeFireBase.getTables { [self] in
                 tablesForDelete = getDataFromeFireBase.tables
              menuColleCtionView.reloadData()
            }
    
    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tablesForDelete.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "takeOrderCell", for: indexPath) as! TakeOrderCollectionViewCell
         cell.typeLabel.text = "num \(tablesForDelete[indexPath.row])"
        return cell
        
    }
    

}
