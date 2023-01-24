
import Foundation
import Firebase


class RemoveTableFomFb {
    
    
    var ref :  DatabaseReference!
    let tableInFb : DatabaseReference!
    
    init(){
        
        ref = Database.database().reference()
        tableInFb = ref.child(Constance.olearysEntre).child(Constance.tables)
    }
    
    
    
    func removeTable(table : Table){
        let restaurant =   ref.child(Constance.olearysEntre)
        let tableNr  = Int (table.number)!
        let tableNumber = table.number
        let tableIndexInFb = String(tableNr - Nr.one)
        
        let table =  restaurant.child(Constance.tables).child(tableIndexInFb)
        
        let tableAsDectionary : [String : Any] =
        
        [
            
            Constance.tableNumber : tableNumber ,
            Constance.tableAvailable : true ,
            Constance.tableOrdersPaid : false,
            Constance.tableHasOrder : false,
            Constance.tableOrdersDone : false ,
            Constance.tableSum : 0.0 ,
            Constance.tableColor : Constance.tableAvailable ,
            Constance.tableStatus : Constance.available
        ]
        
        table.setValue(tableAsDectionary)
    }
    
    
    
}
