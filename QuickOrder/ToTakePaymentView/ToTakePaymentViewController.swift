
import UIKit

class ToTakePaymentViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var tablesCollectionView: UICollectionView!
    
    let observeTableInFb = ObserveTableInFb()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeTableInFb.getTables { [self] in
            DispatchQueue.main.async { [self] in
                tablesCollectionView.reloadData()
            }
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return observeTableInFb.tableshavePayment.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: Constance.cellForTablesInToTakePaymentView, for: indexPath) as! CollectionViewCellForTablesInToTakePaymentView
        cell.tablesNumberLabel.text   = observeTableInFb.tableshavePayment[indexPath.row].number
        return cell
    }
    
    
    // cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = DeviceManager()
        return CGSize(width: cellSize.width , height: cellSize.heigh)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let table = observeTableInFb.tableshavePayment[indexPath.row]
        performSegue(withIdentifier:Constance.navigateToPaymentView, sender: table)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let takePaymentViewController = segue.destination as! TakePaymentViewController
        takePaymentViewController.table =  (sender as! Table)
    }
    
    
    
    
}



