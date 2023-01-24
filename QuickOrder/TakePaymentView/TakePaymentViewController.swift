
import UIKit

class TakePaymentViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableNumberLabel: UILabel!
    var table = Table()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableNumberLabel.text = "\(Constance.table) \(table.number)  \(Constance.sum) \(table.sum)"
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table.guests[section].orders.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // number of sections in the table view
        return table.guests.count
    }
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let deviceManager = DeviceManager()
        let label = UILabel()
        label.text = "\(Constance.guest) \(table.guests[section].number) \(Constance.sum) \(table.guests[section].sum)"
        label.font = UIFont.systemFont(ofSize: CGFloat(deviceManager.tittleeaderInSection))
        label.textColor = Clr.tableAvailable
        label.textAlignment = .center
        label.backgroundColor = Clr.appColor
  
        return label
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constance.takePaymentCell, for: indexPath)as! TakePaymentTableViewCell
        cell.guestOrderInfo.text = table.guests[indexPath.section].orders[indexPath.row].name
        cell.selectionStyle = .none
        return cell
    }
    
    
    
    @IBAction func PaidButton(_ sender: Any) {
        let removeTable = RemoveTableFomFb()
        removeTable.removeTable(table: table)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
