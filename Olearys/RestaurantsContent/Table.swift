
import Foundation


class Table {
  
    
    var guests : [Guest] = []
    var types : [Type] = []
    var number = ""
    var sum = 0.0
    var status = Status.available
    var payment = Payment.noOrder
    var orderTaken = ""
  
    
    
    func getTableSum(){
        self.sum = 0.0
        for guest in self.guests {
            self.sum += guest.sum
        }
    }
    
   
   
    
    
    
}
