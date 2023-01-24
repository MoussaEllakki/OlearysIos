
import UIKit

class KitchenMenuCollectionViewCell: UICollectionViewCell , UITableViewDataSource , UITableViewDelegate{
    
    
    @IBOutlet weak var guestOrderTableview: UITableView!
    @IBOutlet weak var guestNumber: UILabel!
    @IBOutlet weak var guestOrderTableView: UITableView!
    var types = [Type]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        guestOrderTableView.delegate = self
        guestOrderTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constance.guestOrderCellInKitchen, for: indexPath) as!  GuesOrdersTableViewCell
        let type = types[indexPath.row]
        cell.typename.text = type.name
        let typeNameLabelColor  : UIColor = type.done == true ? Clr.tableAvailable! : Clr.tableBusy!
        cell.typename.backgroundColor = typeNameLabelColor
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        types[indexPath.row].done.toggle()
        guestOrderTableview.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return 50 // Set the row height to 50 for iPhone devices
        } else if UIDevice.current.userInterfaceIdiom == .pad {
            return 100 // Set the row height to 100 for iPad devices
        } else {
            return 75 // Set the row height to 75 for other device types
        }
    }
    
}
