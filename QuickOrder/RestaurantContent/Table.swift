
import Foundation


class Table {
    
    
    var guests : [Guest] = []
    var number = ""
    var sum = 0.0
    var available = true
    var tableOrdersPaid = false
    var orderDone = false
    var hasOrder = false
    var tableColor = Constance.tableAvailable
    var tableStatus = Constance.available
    
    
    func getTableSum(){
        self.sum = 0.0
        for guest in self.guests {
            self.sum += guest.sum
        }
    }
    
    
}
