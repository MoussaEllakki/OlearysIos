
import UIKit

class ForTakingPaymentViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
  

    let observeDataInfireBase = ObserveDataInfireBase()
    
    @IBOutlet weak var forTakingOrderCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forTakingOrderCollectionView.delegate = self
        forTakingOrderCollectionView.dataSource = self
        
        observeDataInfireBase.getTablesWhichHavePayment { [self] in
            
            forTakingOrderCollectionView.reloadData()
        }
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return observeDataInfireBase.tableshavePayment.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fortakingPaymentCell", for: indexPath) as! ForTakingPaymentCollectionViewCell
        
        let tableImage  = UIImage(named: "imgred")!
        
        let tableNumber = observeDataInfireBase.tableshavePayment[indexPath.row].number
        cell.setUpTalesContent(tableNumber: tableNumber , tableImage: tableImage)
    return cell
 }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.view.frame.width * 0.25, height: self.view.frame.height * 0.1)
    }

}
    



