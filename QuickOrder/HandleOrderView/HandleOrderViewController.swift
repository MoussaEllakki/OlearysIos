
import UIKit

class HandleOrderViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource  ,  UICollectionViewDelegateFlowLayout{
    
    
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var tableNumberLabel: UILabel!
    var extraOrderTextView = UITextView()
    var extraOrderView = UIView()
    var ConfirmOrderIsDoneButton = UIButton()
    var cancelButton = UIButton()
    
    var currentGuest : Guest?
    var table = Table()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableNumberLabel.text = "\(Constance.table) \(table.number)"
        addComponentToViewToHandleSpecialOrder()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return table.guests.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constance.kitchenmenuCell, for: indexPath) as! KitchenMenuCollectionViewCell
        let guest = table.guests[indexPath.row]
        cell.types = guest.orders
        cell.guestNumber.text = "\(Constance.guest)  \(guest.number)"
        cell.guestOrderTableView.reloadData()
        cell.guestNumber.tag = indexPath.row
        
        
        if (guest.guestHasspecialOrder == true && guest.guestspecialOrderDone == false){
            cell.guestNumber.backgroundColor = Clr.tableBusy
        }else{
            cell.guestNumber.backgroundColor = Clr.tableAvailable
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentGuest = table.guests[indexPath.row]
        if (currentGuest?.guestHasspecialOrder == true){
            showComponentToHandleSpecialOrder()
        }
    }
    
    
    
    @IBAction func OrderDoneButton(_ sender: Any) {
        let checkIfOrderDone = CheckIfOrderDone()
        if checkIfOrderDone.areAllOrdersDone(guests: table.guests) {
            let updateTableInFb = UpdateTableInFb()
            updateTableInFb.makeOrderDone(table: table)
       
            self.navigationController?.popViewController(animated: true)
        } else {
            Msg.sendMsg(vc: self, msg: Msg.orderDosentDone)
        }
    }
    
    
    // cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = DeviceManager()
        return CGSize(width: cellSize.width, height: Int(self.view.frame.height) - 350)
    }
    
    
}
