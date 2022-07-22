
import UIKit

class ForTakingPaymentCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var tableImage: UIImageView!
    
    @IBOutlet weak var tableNumberLabel: UILabel!
    
    
    
    
    func setUpTalesContent(tableNumber : String , tableImage : UIImage){
        
        self.tableNumberLabel.text = tableNumber
        self.tableImage.image = tableImage
        
    }

    
    
    
}
