
import UIKit

class TakeOrderViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
   
  
    @IBOutlet weak var tableNumberLabel: UILabel!
    @IBOutlet weak var tabletotalLabel: UILabel!
    @IBOutlet weak var guestNumberLabel: UILabel!
    @IBOutlet weak var guestorderCollectionView: UICollectionView!
    
    var fordelete = ["GIANT DOUBLE CHEESE BURGER" , "GIANT DOUBLE CHEESE BURGER" , "GIANT DOUBLE CHEESE BURGER" ]
    override func viewDidLoad() {
        super.viewDidLoad()

    
       
     
    
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return fordelete.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "guestOrderCell", for: indexPath) as! GuestOrdersCollectionViewCell
        
        cell.guesrOrderLabel.layer.masksToBounds = true
        cell.guesrOrderLabel.layer.cornerRadius = 10
        cell.guesrOrderLabel.text = fordelete[indexPath.row]
        return cell
    }
    
    
    
    
}



extension TakeOrderViewController{
    
    
    @IBAction func foodButton(_ sender: Any) {
        
    
    }
    
    @IBAction func drinksButton(_ sender: Any) {
        
  
    }
    
    @IBAction func dessertsButton(_ sender: Any) {
        
  
    }
    
    
    @IBAction func kidsbutton(_ sender: Any) {
        
 
    }
    
    
}
