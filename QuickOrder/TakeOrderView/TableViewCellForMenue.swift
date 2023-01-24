
import UIKit

class TableViewCellForMenue: UITableViewCell  {
    
    
    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var countOfTypes: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var typeNameLabel: UILabel!
    
    var type : Type?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
