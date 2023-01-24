
import Foundation
import Firebase

class BuildTablesInFb {
    
    
    
    var ref :  DatabaseReference!
    
    init(){
        ref = Database.database().reference()
    }
    
    func buildTables (tableQuantity : Int) {
        
        let restaurant =   ref.child(Constance.olearysEntre)
        for tableNr in 0...tableQuantity{
            
            let tableNumber = String(tableNr + Nr.one)
            let tableIndexInFb =  String (tableNr)
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
    
    
}
