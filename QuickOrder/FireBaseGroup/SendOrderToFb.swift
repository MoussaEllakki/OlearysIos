
import Foundation
import Firebase

class SendOrderToFb {
    
    
    var ref :  DatabaseReference!
    let tableInFb : DatabaseReference!
    
    init(){
        
        ref = Database.database().reference()
        tableInFb = ref.child(Constance.olearysEntre).child(Constance.tables)
    }
    
    
    
    func sendOrderToFireBase(table : TableViewModel){
        
        let tableAsDectionary : [String : Any] =
        
        [
            Constance.tableHasOrder : true,
            Constance.tableOrdersPaid : false,
            Constance.tableAvailable : false,
            Constance.tableSum : table.sum,
            Constance.tableNumber : table.number,
            Constance.tableOrdersDone : false,
            Constance.tableColor : Constance.tableBusy,
            Constance.tableStatus : Constance.busy
        ]
        
        let tableNumberToInt =  Int(table.number)!
        let tableIndexInFb = String(tableNumberToInt - Nr.one)
        
        tableInFb.child(tableIndexInFb).setValue(tableAsDectionary)
        
        let guestsInFB =  tableInFb.child(tableIndexInFb).child(Constance.guests)
        
        for (index, guest) in table.guests.enumerated() {
            
            let guestNr = String (index)
            guestsInFB.child(guestNr).child(Constance.guestSum).setValue(guest.sum)
            guestsInFB.child(guestNr).child(Constance.guestNumber).setValue(guest.number)
            guestsInFB.child(guestNr).child(Constance.specialOrder).setValue(guest.specialOrder)
            guestsInFB.child(guestNr).child(Constance.guestHasspecialOrder).setValue(guest.guestHasspecialOrder)
            guestsInFB.child(guestNr).child(Constance.guestspecialOrderDone).setValue(guest.guestspecialOrderDone)
            
            for (index, type) in guest.orders.enumerated(){
                let typeNumber = String(index )
                guestsInFB.child(guestNr).child(Constance.guestOrder).child(typeNumber).child(Constance.typeName).setValue(type.name)
                guestsInFB.child(guestNr).child(Constance.guestOrder).child(typeNumber).child(Constance.typePrice).setValue(type.price)
            }
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
}
