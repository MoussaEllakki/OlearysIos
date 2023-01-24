
import Foundation

class Guest {
    
    var orders = [Type]()
    var number = ""
    var sum = 0.0
    var specialOrder = ""
    var guestHasspecialOrder = false
    var guestspecialOrderDone = false
    
    
    
    func countSum (){
        self.sum = 0.0
        for order in orders {
            sum += order.price
        }
    }
    
    
}
