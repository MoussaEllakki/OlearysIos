import UIKit
import SwiftUI

protocol SendMsg {
    func sendMsg(msg: String)
    func confirmSendingOrder(msg: String)
}


class TakeOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, SendMsg {
    
    @IBOutlet weak var guestOrderCollectionView: UICollectionView!
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var drinkBtn: UIButton!
    @IBOutlet weak var desserBtn: UIButton!
    @IBOutlet weak var kidsBtn: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var guestInfolabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var extraOrderTextView = UITextView()
    var extraOrderView = UIView()
    var addButton = UIButton()
    var cancelButton = UIButton()
    
    let desertsMenu = DessertsMenus()
    let drinkMenu = DrinksMenus()
    let kidsMenu = KidsMenus()
    let foodMenu = FoodMenus()
    var showMenu = [Menu]()
    
    let tableViewModel = TableViewModel()
    var tableNumber = Constance.emptyText
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAllFunctionWhichShouldRunfirst()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showMenu[section].types.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constance.cellForMenu, for: indexPath) as! TableViewCellForMenue
        
        let theType = showMenu[indexPath.section].types[indexPath.row]
        cell.typeNameLabel.text = "\(theType.name)   \(theType.price)"
        cell.countOfTypes.text = showGuestOrdersQuantity(name: theType.name)
        cell.removeButton.tag = indexPath.row
        cell.addButton.tag = indexPath.row
        
        let type = showMenu[indexPath.section].types[indexPath.row]
        cell.addButton.type = type
        cell.removeButton.type = type
        cell.addButton.addTarget(self, action: #selector(addOrder), for: .touchUpInside)
        cell.removeButton.addTarget(self, action: #selector(removeOrder), for: .touchUpInside)
        return cell
    }
    
    @objc func addOrder(sender: UIButton) {
        let type = sender.type
        tableViewModel.guestOrders.append(type!)
        guestOrderCollectionView.reloadData()
        tableView.reloadData()
    }
    
    @objc func removeOrder(sender: UIButton) {
        let type = sender.type
        let name = type?.name
        if let index = tableViewModel.guestOrders.firstIndex(where: { $0.name == name }) {
            tableViewModel.guestOrders.remove(at: index)
            guestOrderCollectionView.reloadData()
            tableView.reloadData()
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return showMenu.count
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let deviceManager = DeviceManager()
        let label = UILabel()
        label.text = "\(showMenu[section].tittle)"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: CGFloat(deviceManager.tittleeaderInSection))
        label.textColor = .systemGray5
        label.backgroundColor = Clr.appColor
        return label
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let device = UIDevice.current
        if device.userInterfaceIdiom == .phone {
            // Return a smaller cell size for iPhones
            return 80
        } else {
            // Return a larger cell size for iPads
            return 120
        }
    }
    
    
    func showGuestOrdersQuantity(name : String) -> String{
        let matchingObjects = tableViewModel.guestOrders.filter { $0.name == name }
        let count = matchingObjects.count
        if (count == Nr.zero){
            return ""
        }else{
            return String(count)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (tableViewModel.guest?.orders.count)!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constance.guestorderCell, for: indexPath) as! GuestOrderCollectionViewCell
        cell.guestOrderlabel.text =  tableViewModel.guest?.orders[indexPath.row].name
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = DeviceManager()
        return CGSize(width: cellSize.width - 50, height: cellSize.heigh)
    }
    
    
    
    @IBAction func foodButton(_ sender: Any) {
        changeMenu(to: .foodMenu)
    }
    
    @IBAction func drinksButton(_ sender: Any) {
        changeMenu(to: .drinksMenu)
    }
    
    @IBAction func dessertButton(_ sender: Any) {
        changeMenu(to: .dessertsMenu)
    }
    
    @IBAction func kidsButton(_ sender: Any) {
        changeMenu(to: .kidsMenu)
    }
    
    @IBAction func nextGuestButton(_ sender: Any) {
        tableViewModel.nextGuest()
        showGuestInfo()
        tableView.reloadData()
    }
    
    @IBAction func sendOrderButton(_ sender: Any) {
        tableViewModel.sendOrder()
    }
    
    @IBAction func addExtraOrderButton(_ sender: Any) {
        showComponentToAddExtraOrder()
    }
    
}


extension UIButton {
    private struct AssociatedKeys {
        static var typeKey = "typeKey"
    }
    
    var type: Type? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.typeKey) as? Type
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.typeKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
