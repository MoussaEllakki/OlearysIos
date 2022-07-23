
import Foundation
import Firebase

class BuildRestaurant {
    
    var ref :  DatabaseReference!
    
    init(){
        ref = Database.database().reference()
    }
    
    
    // this function must run once. then it must to remove from code
    func buildTables (tableQuantity : Int) {
      
        let restaurant =   ref.child(FBChild().olearysEntre)
        
        
        for tableNumber in 1...tableQuantity{
            
         let tableNumberAsString = String(tableNumber)
            
        let table =  restaurant.child(FBChild().tables).child(tableNumberAsString)
            
            let tableAsDectionary : [String : Any] =
            
            [
                FBChild().tableNumber : tableNumberAsString,
                FBChild().hasOrder : false,
                FBChild().paid : true,
                FBChild().available : true,
                FBChild().done : false
                
            ]
            
            table.setValue(tableAsDectionary)
            
        }
      
}
    
 
    

    
  
    
    
}
