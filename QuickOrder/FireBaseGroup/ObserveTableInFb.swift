

import Foundation
import Firebase

class ObserveTableInFb {
    var ref: DatabaseReference!
    var tables: [Table] = []
    var tableshavePayment = [Table]()
    var tableshaveOrders = [Table]()
    
    
    init() {
        ref = Database.database().reference()
    }
    
    func getTables(completionHandler: @escaping () -> ()) {
        ref.child(Constance.olearysEntre)
            .child(Constance.tables).observe(DataEventType.value, with: { [self] snapshot in
                self.tables.removeAll()
                self.tableshaveOrders.removeAll()
                self.tableshavePayment.removeAll()
                
                
                for dataAsOneSnapshot in snapshot.children {
                    let oneSnapshot = dataAsOneSnapshot as! DataSnapshot
                    let tableAsDictionary = oneSnapshot.value as! [String: AnyObject]
                    
                    let table = Table()
                    table.number = tableAsDictionary[Constance.tableNumber] as! String
                    table.available = tableAsDictionary[Constance.tableAvailable] as! Bool
                    table.orderDone = tableAsDictionary[Constance.tableOrdersDone] as! Bool
                    table.hasOrder = tableAsDictionary[Constance.tableHasOrder] as! Bool
                    table.tableColor = tableAsDictionary[Constance.tableColor] as! String
                    table.tableStatus = tableAsDictionary[Constance.tableStatus] as! String
                    table.sum = tableAsDictionary[Constance.tableSum] as! Double
                    
                    if let guests = tableAsDictionary[Constance.guests] as? [AnyObject?] {
                        for guestFb in guests {
                            let guest = Guest()
                            
                            if let guestSum = guestFb![Constance.guestSum] as? Double {
                                guest.sum = guestSum
                                
                                if let guestHasSpecialOrder = guestFb![Constance.guestHasspecialOrder] as? Bool{
                                    guest.guestHasspecialOrder = guestHasSpecialOrder
                                    if let guestOrderDone = guestFb![Constance.guestspecialOrderDone] as? Bool{
                                        
                                        guest.guestspecialOrderDone = guestOrderDone
                                        
                                        
                                        if let guestSpecialOrder = guestFb![Constance.specialOrder] as? String{
                                            
                                            guest.specialOrder = guestSpecialOrder
                                            
                                            if let guestNumber = guestFb![Constance.guestNumber] as! String? {
                                                guest.number = guestNumber
                                                
                                                if let guestOrder = guestFb![Constance.guestOrder] as? [AnyObject?] {
                                                    for order in guestOrder {
                                                        if let typeName = order![Constance.typeName] as? String {
                                                            if let typePrice = order![Constance.typePrice] as? Double {
                                                                let type = Type(name: typeName, price: typePrice)
                                                                guest.orders.append(type)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                
                            }
                            table.guests.append(guest)
                        }
                    }
                    
                    if table.hasOrder == true {
                        self.tableshaveOrders.append(table)
                        
                    }
                    if table.orderDone == true {
                        self.tableshavePayment.append(table)
                    }
                    
                    self.tables.append(table)
                }
                
                completionHandler()
                
                
                
            })
    }
    
    
    
    
    
}




