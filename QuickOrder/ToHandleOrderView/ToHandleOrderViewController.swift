
import UIKit

class ToHandleOrderViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    
    
    @IBOutlet weak var tablesCollectionview: UICollectionView!
    let observeTableInFb = ObserveTableInFb()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        observeTableInFb.getTables { [self] in
      DispatchQueue.main.async { [self] in
                tablesCollectionview.reloadData()
             
            
            }
        }}
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return observeTableInFb.tableshaveOrders.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: Constance.cellFortablesInToHandleorderView, for: indexPath) as! CollectionViewCellForTablesInToHandleorderView
        cell.tablesNumberlabel.text =  observeTableInFb.tableshaveOrders[indexPath.row].number
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let table = observeTableInFb.tableshaveOrders[indexPath.row]
        performSegue(withIdentifier:Constance.navigateToHandleOrderView, sender: table)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let handelOrderViewcontroller = segue.destination as! HandleOrderViewController
        handelOrderViewcontroller.table =  (sender as! Table)
    }
    
    
    // cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = DeviceManager()
        return CGSize(width: cellSize.width , height: cellSize.heigh)
    }
    
    
    
    
}
