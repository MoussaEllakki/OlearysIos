
import Foundation
import Firebase

class UpdateTableInFb {
    
    
    var ref :  DatabaseReference!
    let tableInFb : DatabaseReference!
    
    init(){
        
        ref = Database.database().reference()
        tableInFb = ref.child(Constance.olearysEntre).child(Constance.tables)
    }
    
    
    func makeOrderDone(table : Table){
        let tableNumberToInt =  Int(table.number)!
        let tableIndexInFb = String(tableNumberToInt - Nr.one)
        tableInFb.child(tableIndexInFb).child(Constance.tableOrdersDone).setValue(true)
        tableInFb.child(tableIndexInFb).child(Constance.tableHasOrder).setValue(false)
        
    }
    
    
    
    
    
}
