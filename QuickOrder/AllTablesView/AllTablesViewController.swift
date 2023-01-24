
import UIKit

class AllTablesViewController: UIViewController {
  
  @IBOutlet weak var tablesCollectionView: UICollectionView!
  let observeTableInFb = ObserveTableInFb()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    observeTableInFb.getTables { [weak self] in
      DispatchQueue.main.async { [weak self] in
        self?.tablesCollectionView.reloadData()
          
       
      }
    }
  }
}

extension AllTablesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return observeTableInFb.tables.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constance.cellForAllTables, for: indexPath) as! CollectionViewCellForAllTables
    let table = observeTableInFb.tables[indexPath.row]
    cell.tablesNumberlabel.backgroundColor = UIColor(named: table.tableColor)
    cell.tablesNumberlabel.text = "\(table.number)    \(table.tableStatus)"
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellSize = DeviceManager()
    return CGSize(width: cellSize.width, height: cellSize.heigh)
  }
  
    
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let table = observeTableInFb.tables[indexPath.row]
    let tableNumber = observeTableInFb.tables[indexPath.row].number
    
    if (table.available == false) {
      Msg.sendMsg(vc: self, msg: Msg.tableIsTaken)
    } else {
      performSegue(withIdentifier: Constance.navigateToTakeOrderView, sender: tableNumber)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let takeOrderViewController = segue.destination as! TakeOrderViewController
    takeOrderViewController.tableNumber = String(sender as! String)
  }
}
